import os
from dotenv import load_dotenv
import chainlit as cl
from langchain import PromptTemplate, SQLDatabase, SQLDatabaseChain, HuggingFaceHub

#from top_table import db_select

load_dotenv()
hf_api_token = os.getenv('hf_token')

repo = 'tiiuae/falcon-7b-instruct'

#top_table = db_select("How many heads of the departments are older than 56?")[1]

template = """You are a SQLite expert. Given an input question, first create a syntactically correct SQLite query to run, then look at the results of the query and return the answer to the input question.
            Unless the user specifies in the question a specific number of examples to obtain, query for at most {top_k} results using the LIMIT clause as per SQLite. You can order the results to return the most informative data in the database.
            Never query for all columns from a table. You must query only the columns that are needed to answer the question. Wrap each column name in double quotes (") to denote them as delimited identifiers.
            Pay attention to use only the column names you can see in the tables below. Be careful to not query for columns that do not exist. Also, pay attention to which column is in which table.
            Pay attention to use date('now') function to get the current date, if the question involves "today".

            Use the following format:

            Question: Question here
            SQLQuery: SQL Query to run
            SQLResult: Result of the SQLQuery
            Answer: Final answer here

            Only use the following tables:
            {table_info}

            Question: {input}"""

@cl.langchain_factory(use_async=False)
def factory():
    prompt = PromptTemplate(template=template, input_variables=["input","table_info","top_k"])

    db = SQLDatabase.from_uri("sqlite:///" + '/Users/brettly/Sboard/projects/text-to-sql/data/processed/db/department_management.sqlite')

    llm = HuggingFaceHub(repo_id=repo, huggingfacehub_api_token=hf_api_token, model_kwargs={"temperature": 0.5, "max_length": 200})

    sql_chain = SQLDatabaseChain.from_llm(prompt=prompt, llm=llm, db=db, verbose=True)

    return sql_chain



