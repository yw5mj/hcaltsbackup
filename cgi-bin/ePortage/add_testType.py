#!/usr/bin/python

import cgi
import cgitb ; cgitb.enable()
from connect import connect
import mysql.connector
import base

#cgi header
print "Content-type: text/html\n"

form = cgi.FieldStorage()
testName = form.getvalue("testName","no name found")
descShort = form.getvalue("descShort","no description found")
descLong = form.getvalue("descLong","no description found")

base.header(title='Add Test Type')
base.top()

db = connect(1)
cur = db.cursor()

cur.execute("INSERT INTO Test_Type (name,required,desc_short,desc_long,relative_order) VALUES ('{0}',1,'{1}','{2}',1);".format(testName,descShort,descLong))

db.commit()
db.close()
#else:
#    print "ERROR occured..."
#    print testName,",",descShort,",",descLong

base.bottom()
