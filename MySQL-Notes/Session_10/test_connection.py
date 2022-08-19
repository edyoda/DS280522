import mysql.connector
from mysql.connector import errorcode

try:
	cnx = mysql.connector.connect(user='root', password='password', host='127.0.0.1', database='classicmodels')
	print("Connection Succssful")
except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Something is wrong with your user name or password")
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("Database does not exist")
    else:
        print(err)
else:
    cnx.close()
