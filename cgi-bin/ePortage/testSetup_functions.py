from connect import connect
import module_functions
import mysql.connector

def get():

    db = connect(0)
    cur = db.cursor()

    cur.execute("SELECT name, desc_long, required from Test_Type;")
    rows = cur.fetchall()

    #print rows
    tests = []
    for test in rows :
        #print test
        tests.append({'name':test[0],'desc':test[1],'req':test[2]})

    #print tests
    return tests
