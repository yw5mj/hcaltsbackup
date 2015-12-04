from connect import connect
import settings
import cgitb; cgitb.enable()

testId = { "visual inspection" : 9 , 
           "ground short" : 11 , 
           "crate power" : 12 , 
           "prog. FPGA" : 22 , 
           "check f/w" : 15 , 
           "raw ped" : 1 , 
           "register test" : 3 , 
           "link test" : 4 , 
           "cap ID rot." : 5 ,
           "internal charge injection" : 21 , 
           "calibration" : 23  
           #"LED test" : 24 , 
           }


def fetch( test ) : 
    db = connect(0)
    cur = db.cursor()

    cur.execute("SELECT COUNT(sn) FROM Test LEFT JOIN (Card) ON (Card.card_id=Test.card_id) WHERE (test_type_id={0} AND successful=1)".format(test))
    numPass = cur.fetchall()[0][0]
    cur.execute("SELECT COUNT(sn) FROM Test LEFT JOIN (Card) ON (Card.card_id=Test.card_id) WHERE (test_type_id={0} AND successful=0)".format(test))
    numFail = cur.fetchall()[0][0]

    return numPass,numFail

for t in testId : 

    results = fetch( testId[t] ) 
    print t
    print "pass:",results[0],"fail:",results[1],"total:",results[0]+results[1],"percent passed:",results[0]*100./(results[0]+results[1]),"percent failed:",results[1]*100./(results[0]+results[1])



