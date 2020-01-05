import csv
from sqlalchemy import MetaData
from sqlalchemy import create_engine
from sqlalchemy.orm.session import sessionmaker
from sqlalchemy.orm import mapper
# from sqlalchemy import *
# from sqlalchemy.ext.declarative import declarative_base


class Stock(object):
    pass


conn_string = 'sqlite:///Stock.db'
engine = create_engine(conn_string)
metadata = MetaData(engine)
metadata.reflect(only=['hnx'])
stock = metadata.tables['hnx']

stock_mapper = mapper(Stock, stock)

# print(type(metadata.tables['meta_stock']))
# Base = declarative_base()
# Base.metadata.create_all(engine)            # here we create all tables

Session = sessionmaker(bind=engine)
session = Session()

with open('hnx.csv', 'r') as csv_file:
    csv_reader = csv.reader(csv_file)
    buffer = []
    for row in csv_reader:
        buffer.append({
            'trade_date': row[0],
            'sec_cd': row[1],
            'close': row[2],
            'mat_qty': row[3],
            'highest': row[4],
            'lowest': row[5]
        })

        if len(buffer) % 1000 == 0:
            session.bulk_insert_mappings(stock_mapper, buffer)
            session.commit()
            buffer = []

    session.bulk_insert_mappings(stock_mapper, buffer)
    session.commit()
