import os
from dotenv import load_dotenv
import time

from langchain import HuggingFaceHub
from langchain.vectorstores import Chroma
from langchain.embeddings import HuggingFaceEmbeddings

from sql_functions import similar_doc_search, identify_schemas, connect_db, prioritize_tables, get_table_info, get_sql_dialect, llm_create_sql, llm_check_sql, run_sql, llm_debug_error, llm_debug_empty, llm_analyze

#setup embeddings using HuggingFace and the directory location
embeddings  = HuggingFaceEmbeddings()
persist_dir = '../data/processed/chromadb'
db_filepath = '../data/raw/spider/database/'

# load from disk
vectordb = Chroma(persist_directory=persist_dir, embedding_function=embeddings)

#get api key
load_dotenv()
hf_api_token = os.getenv('hf_token')

#add path to HF repo
repo_id = 'google/flan-t5-xxl' #using the google flan-t5-xxl model

#establish llm model
llm = HuggingFaceHub(repo_id=repo_id, huggingfacehub_api_token=hf_api_token, model_kwargs={"temperature": 0.1, "max_length": 256})

#define application - I want to use the imported funciton, but also loop through each of the top likely schemas. This will slow it down, but allow for testing multiple options.
#this may not be feasible in a final model that could potentially call to a paid LLM. But we can potentially build out a better entity extraction step later on.

def sql_copilot(language_model=llm, max_attempts=3):

    #start by getting user input of the question they want to ask
    user_question = input("What would you like to know from your data?: ")

    #find top 3 related documents (schema - table combos w/ metadata) in our vector database
    print("\nIdentifying most likely schemas...")
    db_documents = similar_doc_search(question=user_question, vector_database=vectordb, top_k=3)

    #go through those documents and create a list of unique schemas to try
    top_schemas = identify_schemas(db_documents)
    print(top_schemas)

    #initiate a loop to test each of the top schemas
    for schema in list(top_schemas): #its in a set, so have to convert to a list

        #connect to the related database
        print("\nConnecting to " + schema + " schema...")
        db = connect_db(db_path=db_filepath, target_schema=schema)

        #sort or tables by relation to the question
        tables_sorted = prioritize_tables(documents=db_documents, target_schema=schema, sql_database=db)

        #access the database and pull down the DDL and 3 sample rows from each table, save to a single variable to use in our prompt
        tables_info = get_table_info(tables=tables_sorted, database=db)

        #get the sql dialect to be used in our prompt - would like to eventually use this in our connect_db path somehow (to update the file prefix)
        sql_dialect = get_sql_dialect(database=db)
        print("...Connected to database.")

        #1st LLM entry - write the SQL statement and return it
        #including a try-except statement here incase the input is too large for the current setup with HuggingFaceHub inference API
        print("\nCalling to language model...")
        try:
            sql_statement = llm_create_sql(sql_dialect=sql_dialect, table_info=tables_info, question=user_question, lang_model=language_model)
            print("\nTry this SQL statement: " + sql_statement)
        
        except ValueError as err_msg:
            print("\n" + str(err_msg))
            print('\nMoving on to try the next schema...')
            result = 'FAIL'
            continue

        #2nd LLM entry - validate that returned query
        print("\nValidating SQL...")
        validated_sql = llm_check_sql(sql_query=sql_statement, sql_dialect=sql_dialect, lang_model=language_model)
        print("...SQL validated.")

        ###NESTED LOOP###
        #Use this loop to now try to run & debug our sql 3 times
        attempt = 1
        query_to_run = validated_sql
        print("\nRunning query on database...")
        while attempt <= max_attempts:
            query_result = run_sql(database=db, sql_query=query_to_run)

            if query_result[:5] == 'Error': #if the result returns an error message
                if attempt >= max_attempts:
                    print("\nThat query returned an error. Max attempts reached.")
                    result = 'FAIL'
                    output = f"Unable to execute the SQL query after {max_attempts} attempts."
                    break
                
                print("\nThat query returned an error. Working on debugging...")
                #3rd LLM entry - if the query errored, use the llm to try to debug it. Reset our query_to_run variable to this new debugged query
                query_to_run = llm_debug_error(sql_query=query_to_run, error_message=query_result, lang_model=language_model)
                attempt += 1 #add to the counter
                print('That was run #: ' + str(attempt-1) + " of 3.")
                time.sleep(1) #give the program a breather
                print("\nTrying again...")
            
            elif query_result == '[]': #if it returns nothing
                if attempt >= max_attempts:
                    print("\nThat query returned no results. Max attempts reached.")                    
                    result = 'FAIL'
                    output = f"['']\nQuery returned blank results after {max_attempts} attempts."
                    break
                
                print("\nThat query returned no results. Working on debugging...")
                #4th LLM entry - if the query returned nothing, use the llm to try to re-write it. Reset our query_to_run variable to this new query
                query_to_run = llm_debug_empty(sql_query=query_to_run, quesiton=user_question, lang_model=language_model)
                attempt += 1 #add to the counter
                print('That was run #: ' + str(attempt-1) + " of 3.")
                time.sleep(1) #give the program a breather
                print("\nTrying again...")

            else: #if it returns a valid result
                result = 'SUCCESS'

                #5th LLM entry - send the restults back to the model to interpret the results and provide an answer to the original question.
                llm_answer = llm_analyze(query_result=query_result, question=user_question, lang_model=language_model)

                #format output
                output = f"""
                    Input Question: {user_question}
                    SQL Query: {query_to_run}
                    SQL Output: {query_result}
                    Answer: {llm_answer}"""
            break
        
        #check if that schema had a successful run. If so print the output and break
        #if not, continue to the next schema
        if result == 'SUCCESS':
            break
        else:
            continue

    #print the output if it worked, if not print the final sorry.
    if result == 'SUCCESS':
        print("\nHere is what I found:")
        print(output)
    else:
        print("Sorry, I was not able to find the answer to your question.")

if __name__ == '__main__':
    sql_copilot()