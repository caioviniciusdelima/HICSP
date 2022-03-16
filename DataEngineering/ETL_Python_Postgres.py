#!/usr/bin/env python
# coding: utf-8

# ETL com python e postgres

#Bibliotecas
import pandas as pd
from sqlalchemy import create_engine


# # Extract

file_path = "../dataset/"
file_name = "test"
file_type = ".csv"


# Defined extract function
def extract(file_path, file_name, file_type):
    """ Get all datas from a csv file
    
    Args:
        file_path: path of destination file
        file_name: name of extract file
        file_type: extension of read file   
    """
    
    data = pd.read_csv(f'{file_path}{file_name}{file_type}')
    return data


# Transform

def transfom(data):
    """ Transform data columns to int type
    
    Args: 
        data: dataframe
    
    """
    data["gender"] = data["gender"].map({"Male": 1, "Female": 0}).astype(int)
    data["vehicle_age"] = data["vehicle_age"].map({"< 1 Year": 0, "1-2 Year": 1, "> 2 Years": 2}).astype(int)
    data["vehicle_damage"] = data["vehicle_damage"].map({"Yes": 1, "No": 0}).astype(int)
    
    return data


# ## Load

#Postgres config
settings = {
    'host': 'pg_container', #or: 172.20.0.2 IPAddress
    'user': 'postgres',
    'dbname': 'DataWarehouse',
    'psw': 'admin'
}

def load(data, settings, table_name):
    """Put data to Data warehouse in postgres
    
    Args:
        data: a data frame pandas
        settings: credentials to connect with postgres
        table_name: table name to imput data into data warehouse
    """
    print(f"Uploading {data.shape[0]} to Data Warehouse in postgres.")
    
    try:
        #postgres connect
        engine = create_engine(f"postgresql://{settings['user']}:{settings['psw']}@{settings['host']}/{settings['dbname']}")
        con = engine.connect()
        data.to_sql(name=table_name,con=con,if_exists='append', index = False)
        con.close()
    except Exception as e:
        print("Data load error: " + str(e))


if __name__ == "__main__":
    #extract
    data = extract(file_path, file_name, file_type)
    #transfomr
    data = transfom(data)
    #load
    load(data, settings, 'test')

