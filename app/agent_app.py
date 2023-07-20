import os
from dotenv import load_dotenv

import chainlit as cl

from langchain import HuggingFaceHub
from langchain.agents import create_sql_agent
from langchain.agents.agent_toolkits import SQLDatabaseToolkit
from langchain.sql_database import SQLDatabase
from langchain.agents import AgentExecutor
from langchain.agents.agent_types import AgentType

#from top_table import db_select

load_dotenv()
hf_api_token = os.getenv('hf_token')

repo = 'tiiuae/falcon-7b-instruct'

@cl.langchain_factory(use_async=False)
def factory():
    db = SQLDatabase.from_uri("sqlite:///" + '/Users/brettly/Sboard/projects/text-to-sql/data/processed/db/department_management.sqlite')

    llm = HuggingFaceHub(repo_id=repo, huggingfacehub_api_token=hf_api_token, model_kwargs={"temperature": 0.5, "max_length": 200})

    toolkit = SQLDatabaseToolkit(db=db, llm=llm)

    agent_executor = create_sql_agent(
    llm=llm,
    toolkit=toolkit,
    verbose=True,
    agent_type=AgentType.ZERO_SHOT_REACT_DESCRIPTION,
    )

    return agent_executor



