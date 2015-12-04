from connect import connect
import module_functions
import mysql.connector

def get():
    
    db = connect(0)
    cur = db.cursor()
    
    cur.execute("SELECT sn, Card_id FROM Card ORDER by sn ASC")
    rows = cur.fetchall()
 
    
    serial_numbers = []
    for card in rows:
        serial_numbers.append(card[0])
    
    # Get passed tests: (dictionary of names, keyed by SN)
    pass_dic = dict()
    for sn in serial_numbers:
        cur.execute("SELECT Test_Type.name,Test.test_id FROM Test_Type, Card, Test WHERE Card.sn = %(n)s And Test.card_id = Card.card_id AND Test_Type.test_type = Test.test_type_id AND Test_Type.required =1 AND Test.successful = 1 ORDER by relative_order" %{"n": sn})
        passed = cur.fetchall()
        revoked = module_functions.Portage_fetch_revokes(sn)
        temp1 = []
        for x in passed:
            if x[1] not in revoked:
                if x[0] not in temp1:
                    temp1.append(x[0])
        pass_dic[sn] = temp1
     
    # Get failed tests: (dictionary of names, keyed by SN)
    fail_dic = {}
    for sn in serial_numbers:
        cur.execute("SELECT Test_Type.name,Test.test_id FROM Test_Type, Card, Test WHERE Card.sn = %(n)s And Test.card_id = Card.card_id AND Test_Type.test_type = Test.test_type_id AND Test_Type.required =1 AND Test.successful = 0 ORDER by relative_order" %{"n": sn})
        failed = cur.fetchall()
        revoked = module_functions.Portage_fetch_revokes(sn)
        temp1 = []
        for x in failed:
            if x[1] not in revoked:
                if x[0] not in temp1:
                    temp1.append(x[0])
        fail_dic[sn] = temp1
	
	# Get remaining tests: (dictionary of names, keyed by SN)
    list_of_all_required_tests = []
    test_dict = { }
    cur.execute("SELECT name,test_type FROM Test_Type WHERE Test_Type.required = 1 ORDER by relative_order")
    for names in cur:
        list_of_all_required_tests.append(names[0])
        test_dict[names[0]]=names[1]

    List_of_lists = []
    for tests in rows:
        small_list = []
        rem_list = []
        for items in tests:
            small_list.append(items)
        small_list.append(pass_dic[tests[0]])
        for remaining in list_of_all_required_tests:
            if (remaining not in pass_dic[tests[0]]) and (remaining not in fail_dic[tests[0]]):
                remneeds=[ remaining, test_dict[remaining] ]
                rem_list.append(remneeds)
        small_list.append(rem_list)
        small_list.append(fail_dic[tests[0]])
        List_of_lists.append(small_list)

    return List_of_lists

def id_from_name(name):
    db = connect(0)
    cur = db.cursor()
    
    cur.execute("SELECT test_type FROM Test_Type WHERE name = '{0}'".format(name))
    return int(cur.fetchall()[0][0])
