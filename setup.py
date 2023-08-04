import sqlite3
import pandas as pd
import os
import json
import warnings

from langchain import SQLDatabase
from langchain.docstore.document import Document
from langchain.vectorstores import Chroma
from langchain.embeddings import HuggingFaceEmbeddings

from sqlalchemy import exc
from sqlalchemy.exc import SAWarning

warnings.filterwarnings('ignore', category=SAWarning)


from src.data.setup.vector_setup_functions import get_json, connect_db, prep_chroma_documents, create_chroma_db
from src.data.setup.db_setup_functions import get_filenames, get_table_names, get_column_info, df_text_processing, build_schema_info, convert_df_to_json

#### BUILD CONSOLIDATED SCHEMA INFORMATION ####
#you can do this from the provided tables, but that would not be as scaleable in the real world.

#point to location you saved the data to and the type of database
data_directory = 'src/data/raw/spider/database/'
db_type = '.sqlite'

#create a dataframe with schema info
schema_df = build_schema_info(filepath=data_directory, filetype=db_type)

#create a json of the same data if that fomrat tickles your fancy
schema_json = convert_df_to_json(df=schema_df)

##### SAVE SCHEMA INFO #####
save_path = 'src/data/processed/db/'

print("\nSaving dataframe and JSON...")
#save df in pickle file
filepath = save_path+'schema_info.pkl'
schema_df.to_pickle(filepath)

#save json in json file
with open(save_path+'schema_info.json', 'w') as file:
    json.dump(schema_json, file)

print("...Success")



#### CREATING VECTOR DATABASE FROM SCHEMA INFORMATION ####

#setup embeddings using HuggingFace
embeddings = HuggingFaceEmbeddings()

#point to json file with schema info
json_path = 'src/data/processed/db/schema_info.json'

#point to location to save the vector database
persist_directory = 'src/data/processed/chromadb/'

schema_docs = prep_chroma_documents(json_path=json_path, db_path=data_directory)

create_chroma_db(docs=schema_docs, persist_dir=persist_directory, embed_func=embeddings)