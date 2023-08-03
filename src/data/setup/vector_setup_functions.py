import pandas as pd
import json
import os
import warnings

from langchain import SQLDatabase
from langchain.docstore.document import Document
from langchain.vectorstores import Chroma
from langchain.embeddings import HuggingFaceEmbeddings

from sqlalchemy import exc
from sqlalchemy.exc import SAWarning

warnings.filterwarnings('ignore', category=SAWarning)

def get_json(path):
    """Return json file from specified filepath"""
    with open(path, "r") as f:
        json_file = json.load(f)
    
    return json_file

def connect_db(db_path, target_schema):
    """
    Take in the identified schema and connect to the sqlite database with that name
    """
    db_filepath = db_path + target_schema + '/'
    db_filename = target_schema + '.sqlite'

    #point to database
    base_dir = os.path.dirname(os.path.abspath(db_filepath+db_filename)) #get the full path within the device
    db_path = os.path.join(base_dir, db_filename) #combine with filename to get db_path
    db = SQLDatabase.from_uri("sqlite:///" + db_path) #connect via the lanchain method

    return db

#define new document builder
def prep_chroma_documents(json_path, db_path):
    """Take json file and work through it to prepare for load to Chroma.
    
    This version - adding the table info using the langchain SQLDatabase SQLAlchemy wrapper to get table info to add to metadata.
    Would like to not reconnect to the database each time, but instead connect to each schema once and then loop through the tables. But I think this will be easier for now, even if it's less efficient.

    This works specifically with the content and metadata we want for this project and database"""
    docs = []
    error_log = set() #use this to track schemas with errors

    print("\nPrepping documents...")
    print("...Building with schema, table, columns, DDL, and 3 sample rows...\n")


    for item in get_json(json_path):
        #connect to database
        db = connect_db(db_path=db_path, target_schema=item['schema'])

        #create variables
        schema = item['schema']
        table = item['table']
        columns = json.dumps([col['c_name'] for col in item['columns']])

        try:
            table_info = db.get_table_info_no_throw(table_names=[table]) #put try-except here becasue there are some issues in the source sqlite database. I want to call this out, but continue.
        except exc.SQLAlchemyError as e:
            table_info = ""
            error_log.add(schema)
        except TypeError as te:
            table_info = ""
            error_log.add(schema)          

        #create document
        doc = Document(
            page_content=f"""
            Schema: {schema}
            Table: {table}
            Columns: {columns}
            DDL:
                {table_info}
            """,
            metadata={
                'schema': schema,
                'table': table,
                'columns': columns,
            }
        )
        docs.append(doc)
    
    print("\nErrors on these schemas:")
    print(error_log)
    print("\nDocuments created for these, but only stored schema, table, and column names - no DDL & sample rows.")
    
    return docs

def create_chroma_db(docs, persist_dir, embed_func):
    """Take in documents, a location to save the database locally, and the function for embedding and creat the vector database"""
    print("\nCreating vector database...")
    print("...Will take 10-15 minutes...")
    Chroma.from_documents(documents=docs, embedding=embed_func, persist_directory=persist_dir)
    print("...Success!")