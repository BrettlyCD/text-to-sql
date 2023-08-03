import sqlite3
import pandas as pd
import os

def get_filenames(filepath, filetype):
    """Create empty list, loop through files within a directory and grab those of a specifed filetype. Append those to the empty list and return without the filetypes.
    filepath example: "../data/processed/db/"
    filetype example: ".sqlite"
    """
    file_list = []

    for root, dirs, files in os.walk(filepath):
        for file in files:
            if file.endswith(filetype):
                file_list.append(os.path.join(file))

    filenames = [file.replace(filetype, "") for file in file_list]

    return filenames

def get_table_names(db_path):
    """Function to use within build_schema_info to pull down table names from given schema, loop through them, and save to a list"""
    
    table_list = []

    db = sqlite3.connect(db_path)
    cursor=db.cursor()
    cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
    tables = cursor.fetchall()

    for table in tables:
        table_list.append(table[0])
    
    cursor.close()
    db.close()
    
    return table_list

def get_column_info(db_path, schema_name, table_name):
    """Function to use within build_schema_info to pull the column info under the specific table_name"""
    
    db = sqlite3.connect(db_path)
    cursor=db.cursor()
    cursor.execute("PRAGMA table_info(" + table_name + ");")
    columns = cursor.fetchall()

    column_data = (schema_name, table_name, columns)

    cursor.close()
    db.close()

    return column_data

#remove the processing and only leave the additional columns created
def df_text_processing(df, text_columns=['schema', 'table', 'c_name']):
    """Function to apply some simple text processing to our schema info"""

    for col in text_columns:
        df[col+'_split'] = df[col].str.replace('_', ' ') #loop through gext columns and create versions that breakout the '_' connected titles into seperate words

    return df

def build_schema_info(filepath, filetype):
    """Function combines the get_filenames, get_table_names, and get_column_info funciton to create list of file names in a subdirectory and running the PRAGMA table info against each, saving their results to a list.
    It then builds a pandas dataframe with the full schema info"""
    
    schema_list = get_filenames(filepath, filetype)

    schema_data = []

    print("\nCompiling schema information...")

    for schema in schema_list:
        schema_name = schema
        db_path = filepath + str(schema) + "/" + str(schema) + filetype

        table_list = get_table_names(db_path)
        for table in table_list:
            table_name = table
            column_data = get_column_info(db_path, schema_name, table_name)
            schema_data.append(column_data)
    
    schema_df = (pd.DataFrame(schema_data, columns=['schema','table','column_info']).explode('column_info', ignore_index=True))

    schema_df[['c_id','c_name','c_type','notnull','dflt_value','is_pk']] = schema_df.column_info.tolist()

    schema_df.drop(columns=['column_info','notnull','dflt_value','is_pk'], inplace=True)

    schema_df_processed = df_text_processing(schema_df)

    print("...Information compiled in dataframe")
    
    return schema_df_processed

def convert_df_to_json(df):
    print("\nCreating JSON...")
    json = (df.groupby(['schema', 'schema_split', 'table','table_split']) #breakout each of these columns into a record for schema-table combos
       .apply(lambda x: x[['c_id','c_name','c_name_split','c_type']].to_dict('records')) #brekout these into dictionaries under each of the schema-table combos
       .reset_index()
       .rename(columns={0:'columns'})
       .to_dict(orient='records'))
    print("...JSON created")
    
    return json
    