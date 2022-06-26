#!/usr/bin/env python3

import csv
import logging
import sys
import mysql.connector
import requests
import json


def get_exchange_rate(url: str) -> float:
    '''
    Connect to given NBP url and return current currency rate
    '''
    logging.info('Requesting url : %s', url)
    try:
        response = requests.get(url)
    except Exception as e:
        logging.exception('Error connecting to NBP')
    logging.info('url response: %s', response.status_code)
    return response.json()['rates'][0]['mid']


class PriceUpdater():

    usd_url = 'http://api.nbp.pl/api/exchangerates/rates/a/usd/'
    eur_url = 'http://api.nbp.pl/api/exchangerates/rates/a/eur/'
    columns ='ProductID, DepartmentID, Category, IDSKU, ProductName, Quantity, \
        UnitPrice, UnitPriceUSD, UnitPriceEuro, Ranking, ProductDesc, UnitsInStock, UnitsInOrder'
   
    def __init__(self):
        logging.basicConfig(format='%(asctime)s %(message)s', filename='log.log', level=logging.INFO)
        self.usd = None
        self.eur = None
        self.cursor = None
        self.connection = None
        self.database_config = self.load_db_config()
        

    def load_db_config(self):
        '''
        Load and return as dictonary a file that contains a configuration needed to connect to database
        '''
        logging.info('Reading database configuration file')
        try:
            with open('config.json', 'r') as file:
                return json.load(file)['db_config']
        except Exception as e:
            logging.exception('Error loading config file')
    def update_currency(self):
        '''
        Read current usd and eur rates from NBP APIs
        '''
        self.usd = get_exchange_rate(PriceUpdater.usd_url)
        self.eur = get_exchange_rate(PriceUpdater.eur_url)
    def open_db_connection(self):
        '''
        Set database connection and cursor base on database_config
        '''
        logging.info('Connecting to database')
        try:
            self.connection =  mysql.connector.connect(**self.database_config)
            self.cursor = self.connection.cursor()
        except Exception as e:
            logging.exception('Error connecting to database')
    def update_prices(self):
        '''
        Update prices in usc and euro based on current values of those currencies
        '''
        logging.info('Updating database')
        try:
            self.cursor.execute("UPDATE product set UnitPriceEuro= product.UnitPrice * (%s), \
                UnitPriceUsd= product.UnitPrice * (%s)", (self.eur, self.usd))
            self.connection.commit()
        except Exception as e:
            logging.exception('Error updating database')
    def generate_cvs(self):
        '''
        Load product table from database into csv
        '''
        logging.info('Generating csv')
        try:
            self.cursor.execute("SELECT {field} FROM product".format(field=PriceUpdater.columns))
            with open('out.csv', 'w', newline='') as csv_file:
                csvwriter = csv.writer(csv_file)
                csvwriter.writerow(PriceUpdater.columns.split(', '))
                csvwriter.writerows(self.cursor.fetchall())
        except Exception as e:
            logging.exception('Error generating csv')
    def close_db_connection(self):
        logging.info('Closing database connection')
        self.cursor.close()
        self.connection.close()


def main():
    updater = PriceUpdater()
    updater.update_currency()
    updater.open_db_connection()
    if('-csv' in sys.argv):         
        updater.generate_cvs()
    else:
        updater.update_prices()
    updater.close_db_connection()


if __name__ == "__main__":
    main()
