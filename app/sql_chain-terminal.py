import os
from dotenv import load_dotenv

from langchain.vectorstores import Chroma
from langchain.embeddings import HuggingFaceEmbeddings
from langchain import HuggingFaceHub, SQLDatabase, SQLDatabaseChain, PromptTemplate

template = """You are an expert data analyst. Given an input question, first write a syntactically correct {dialect} query to run, then look at the results of the query and return and describe the answer to the initial question.
Use the following format:

Question: Question here
SQLQuery: SQL Query to run
SQLResult: Result of the SQLQuery
Answer: Final answer here

Only use the following tables:
{table_info}

Question: {input}"""

def db_select(persist_dir, query):
    """
    Load the schema info vector database from disk and run the input question against it to return the most likely database we need to pull data from.
    """
    #setup embeddings using HuggingFace and the directory location
    embeddings  = HuggingFaceEmbeddings()
    per_dir = persist_dir

    # load from disk
    vectordb = Chroma(persist_directory=per_dir, embedding_function=embeddings)

    #run prompt as query and get most likely results
    result = vectordb.similarity_search(query, k=1)

    #save variables
    top_schema = result[0].metadata['schema']
    top_table = result[0].metadata['table']
    table_cols = result[0].metadata['columns']

    top_result = (top_schema, top_table, table_cols)

    return top_result

def locate_and_connect_db(filepath, filename):
    """Locate the absolute path of the given SQLITE database and connect to it via the langchain SQLDatabase.from_uri method.
    filepath is the filepath within the repo, example '../data/db/data.db'
    filename is just the filename.filetype, example 'data.db'
    """
    base_dir = os.path.dirname(os.path.abspath(filepath+filename)) #get the full path within the device
    db_path = os.path.join(base_dir, filename) #combine with filename to get db_path
    db = SQLDatabase.from_uri("sqlite:///" + db_path) #connect via the lanchain method

    return db

def load_llm_model(env_variable, repo_id='tiiuae/falcon-7b-instruct', temp=0.1, max_length=64):
    """
    Take in the target hugging face repo and the api key to setup the llm to use in our query chain
    env_variable is the name of the variable that stores your API key in your .env file
    """
    load_dotenv()
    hf_api_token = os.getenv(env_variable)
    llm = HuggingFaceHub(repo_id=repo_id, huggingfacehub_api_token=hf_api_token, model_kwargs={"temperature": temp, "max_length": max_length})

    return llm

def create_prompt_template(input_vars=['input', 'table_info', 'dialect'], prompt_template=template):
    prompt_template = PromptTemplate(input_variables=input_vars, template=prompt_template) #create our prompt template
    return prompt_template

def create_sql_chain(llm, db, prompt_template, verbose=True):
    """Take in prompt template and input variables, along with the llm and db created from other functions to create our SQL Chain"""
    db_chain = SQLDatabaseChain.from_llm(llm, db, prompt=prompt_template, verbose=verbose) #create our database chain
    
    return db_chain

def run_chain(db_chain, prompt, question, table, sql_dialect='sqlite'):
    """Function to run chain that will end our overall application function by taking in your question and variables created by the other functions"""
    db_chain.run(prompt.format(input=question, table_info=table, dialect=sql_dialect))

def sql_analyst(question, vector_db_path='../data/processed/chromadb/schema-table-split', db_root_path='../data/processed/db/', sql_dialect='sqlite', env_api_key_var='hf_token'):
    """take in user info on where the databases and the api key are located and answer their question using the sql chain."""
    
    #query our vector database with the question to get the schema most related to the question.
    top_result = db_select(persist_dir=vector_db_path, query=question)
    top_schema = top_result[0]
    top_table = top_result[1]

    #use this result to establish our database
    db = locate_and_connect_db(filepath=db_root_path, filename=top_schema+'.'+sql_dialect)

    #initialize our large language model - needs an API key - we'll use the standard variables
    llm = load_llm_model(env_variable=env_api_key_var)

    #create prompt template using our preset template
    prompt_template = create_prompt_template()

    #setup the sql chain using the standard variables
    sql_chain = create_sql_chain(db=db, llm=llm, prompt_template=prompt_template)

    #run sql_chain on question
    run_chain(db_chain=sql_chain, prompt=prompt_template, question=question, table=top_table, sql_dialect=sql_dialect)

if __name__ == '__main__':
    sql_analyst()