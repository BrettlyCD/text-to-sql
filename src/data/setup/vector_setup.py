import pandas as pd
import json
import os

from langchain import SQLDatabase
from langchain.docstore.document import Document
from langchain.vectorstores import Chroma
from langchain.embeddings import HuggingFaceEmbeddings

from sqlalchemy import exc

from vector_setup_functions import get_json, connect_db, prep_chroma_documents, create_chroma_db

#### CREATING VECTOR DATABASE FROM SCHEMA INFORMATION ####

#setup embeddings using HuggingFace
embeddings = HuggingFaceEmbeddings()

#point to json file with schema info
json_path = '../data/processed/db/schema_info.json'

#point to location with .sqlite files
data_directory = '../data/raw/spider/database/'

#point to location to save the vector database
persist_directory = '../data/processed/chromadb/'

schema_docs = prep_chroma_documents(json_path=json_path, db_path=data_directory)

create_chroma_db(docs=schema_docs, persist_dir=persist_directory, embed_func=embeddings)