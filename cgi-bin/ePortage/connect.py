import mysql.connector 
def connect( num ):
    if(num==1):
       cnx = mysql.connector.connect(user='Inserter', password='hcalInserter', database='eportage')
    if(num==0):
       cnx = mysql.connector.connect(user='ReadUser', password='hcalReader', database='eportage')
    return cnx
