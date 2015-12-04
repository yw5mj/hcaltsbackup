from connect import connect
import mysql.connector

def get():

    db = connect(0)
    cur = db.cursor()

    cur.execute("SELECT Info_Name, Info_Desc_Long from Card_Info_Types;")
    rows = cur.fetchall()

    #print rows
    tests = []
    for test in rows :
        #print test
        tests.append({'name':test[0],'desc':test[1]})

    #print tests
    return tests
