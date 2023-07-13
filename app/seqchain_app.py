import os
from dotenv import load_dotenv
import chainlit as cl
from langchain import PromptTemplate, SQLDatabase, SQLDatabaseChain, HuggingFaceHub
from langchain.chains import SQLDatabaseSequentialChain

#from top_table import db_select

load_dotenv()
hf_api_token = os.getenv('hf_token')

repo = 'tiiuae/falcon-7b-instruct'


@cl.langchain_factory(use_async=False)
def factory():
    db = SQLDatabase.from_uri("sqlite:///" + '/Users/brettly/Sboard/projects/text-to-sql/data/processed/db/department_management.sqlite')

    llm = HuggingFaceHub(repo_id=repo, huggingfacehub_api_token=hf_api_token, model_kwargs={"temperature": 0.5, "max_length": 200})

    sql_chain = SQLDatabaseSequentialChain.from_llm(llm=llm, database=db, verbose=True)

    return sql_chain



