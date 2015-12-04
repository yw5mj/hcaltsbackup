#!/usr/bin/python

import cgi
import cgitb ; cgitb.enable()
from connect import connect
import mysql.connector
import base

#cgi header
print "Content-type: text/html\n"

form = cgi.FieldStorage()
infoName = form.getvalue("infoName","no name found")
descShort = form.getvalue("descShort","no description found")
descLong = form.getvalue("descLong","no description found")

base.header(title='Add Card Info Type')
base.top()

db = connect(1)
cur = db.cursor()

cur.execute("INSERT INTO Card_Info_Types (Info_Name,Info_Desc_Short,Info_Desc_Long) VALUES ('{0}','{1}','{2}');".format(infoName,descShort,descLong))

db.commit()
db.close()

base.bottom()
