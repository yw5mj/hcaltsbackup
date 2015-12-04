#!/usr/bin/python

import cgi
import cgitb ; cgitb.enable()
from connect import connect
import mysql.connector
import base

#import add_testType_functions

#cgi header
print "Content-type: text/html\n"

form = cgi.FieldStorage()
testerName = form.getvalue("testerName","no name found")

base.header(title='Add Tester')
base.top()

db = connect(1)
cur = db.cursor()

testerID = 1
cur.execute("SELECT person_id from People where person_id={0};".format(testerID))
row = cur.fetchone()
#print row,"<br>"
while( row != None ):
    testerID = testerID + 1
    #print "testerID:",testerID,"<br>"
    cur.execute("SELECT person_id from People where person_id={0};".format(testerID))
    row = cur.fetchone()
  
#print "INSERT INTO people (person_name, person_id) VALUES ('{0}',{1})".format(testerName,testerID)
cur.execute("INSERT INTO People (person_name, person_id) VALUES ('{0}',{1})".format(testerName,testerID))
db.commit()
db.close()

base.bottom()

