# Hawatel-task
Junior Python Developer task
________________________________________
Python script that connects to NBP API, read current currency rates of USD and Euro, and updates tables UnitPriceUSD, UnitPriceEuro accordingly.
The script has a separate mode that generates a csv file containing the whole table products.
________________________________________

To install all dependencies, run 

>pip install requirements.txt

To generate a csv file run with a -csv flag

>price_updater.py -csv

The script need database configuration to connect to, the example setup you can find in config.json file.




