from connect import connect
import module_functions
import mysql.connector

def get():

    db = connect(0)
    cur = db.cursor()

    cur.execute("SELECT person_name, person_id from People")
    rows = cur.fetchall()

    users = []
    for user in rows :
        users.append({'name':user[0],'id':user[1]})


    return users
