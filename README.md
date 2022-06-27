# Hawatel-task
Junior Python Developer task
________________________________________
Python script that connects to NBP API, reads current currency rates of USD and Euro, and updates tables UnitPriceUSD, UnitPriceEuro accordingly.
The script has a separate mode that generates out.csv file that contains table products.
The scripts log its actions and exception to file log.log
________________________________________

To install all dependencies, run 

>pip install requirements.txt

To generate a csv file run with a -csv flag

>price_updater.py -csv

The script needs database configuration to connect to a database, the example setup you can find in config.json file.




