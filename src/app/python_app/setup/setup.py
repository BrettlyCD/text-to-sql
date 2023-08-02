import sqlite3
import pandas as pd
import os
import json

from setup_functions import get_filenames, get_table_names, get_column_info, df_text_processing, build_schema_info, convert_df_to_json

#download spider database from this location "https://drive.google.com/uc?export=download&id=1TqleXec_OykOYFREKKtschzY29dUcVAQ"

#unzip and move the files to the data directory

#point to location you saved the data to and the type of database
data_directory = '../../../../data/raw/spider/database/'
db_type = '.sqlite'

##### BUILD SCHEMA INFO #####
#you can do this from the provided tables, but that would not be as scaleable in the real world.

#create a dataframe with schema info
schema_df = build_schema_info(data_directory, db_type)

#create a json of the same data if that fomrat tickles your fancy
schema_json = convert_df_to_json(schema_df)

##### SAVE SCHEMA INFO #####
save_path = '../../../../data/processed/test-db/'

#save df in pickle file
filepath = save_path+'schema_info.pkl'
schema_df.to_pickle(filepath)

#save json in json file
with open(save_path+'schema_info.json', 'w') as file:
    json.dump(schema_json, file)


