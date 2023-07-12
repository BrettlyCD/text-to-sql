import os
from dotenv import load_dotenv
import chainlit as cl
from langchain import PromptTemplate, SQLDatabase, SQLDatabaseChain, HuggingFaceHub

from sql_chain_terminal import sql_analyst

load_dotenv()
hf_api_token = os.getenv('hf_token')

repo = 'tiiuae/falcon-7b-instruct'

template = """You are an expert data analyst. Given an input question, first write a syntactically correct {dialect} query to run, then look at the results of the query and return and describe the answer to the initial question.
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
    prompt = PromptTemplate(template=template, input_variables=["dialect", "table_info", "input"])

    db = SQLDatabase.from_uri("sqlite:///" + '/Users/brettly/Sboard/projects/text-to-sql/data/processed/db/department_management.sqlite')

    llm = HuggingFaceHub(repo_id=repo, huggingfacehub_api_token=hf_api_token, model_kwargs={"temperature": 0.5, "max_length": 64})

    sql_chain = SQLDatabaseChain.from_llm(prompt=prompt, llm=llm, db=db, verbose=True)

    return sql_chain



