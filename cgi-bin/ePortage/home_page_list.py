from connect import connect
import mysql.connector
import module_functions
import time

def fetch_list_module():
    db = connect(0)
    cur = db.cursor()
        
    cur.execute("SELECT sn, Card_id FROM Card ORDER by Card.sn ASC")
    rows = cur.fetchall()
    return rows


def render_list_module():

    row = fetch_list_module()
    n = 0

    col1=''
    col2=''
    col3=''
    
    for cards in row:
        card_unique_id = module_functions.Portage_fetch_uniqueID(cards[0])
        if n%3 == 0:
            col1+='<li style="font-size:18px"><a href="module.py?card_id=%(id)s&serial_num=%(serial)s"> %(serial)s (%(uniqueID)s)</h4></li>' %{'serial':cards[0], 'id':cards[1] , 'uniqueID':card_unique_id }
        if n%3 == 1:
            col2+='<li style="font-size:18px"><a href="module.py?card_id=%(id)s&serial_num=%(serial)s"> %(serial)s (%(uniqueID)s)</h4></li>' %{'serial':cards[0], 'id':cards[1] , 'uniqueID':card_unique_id }
        if n%3 == 2:
            col3+='<li style="font-size:18px"><a href="module.py?card_id=%(id)s&serial_num=%(serial)s"> %(serial)s (%(uniqueID)s)</h4></li>' %{'serial':cards[0], 'id':cards[1] , 'uniqueID':card_unique_id }
        n += 1
        
    print '<div class="row">'
    print '<div class="col-md-4"><ul>'
    print col1
    print '</ul></div><div class="col-md-4"><ul>'
    print col2
    print '</ul></div><div class="col-md-4"><ul>'
    print col3
    print '</ul></div>'

def add_module_form():
    
    print    '<form method="post" class="sub-card-form" action="add_module2.py">'
    print    '<div class="row">'
    print            '<div class="col-md-12">'
    print                    '<h4><u>Adding a new Test Board</u></h4>'
    print            '</div>'
    print    '</div>'

    print    '<br>'
    print    '<br>'

    print    '<div class="row">'
    print            '<div class = "col-md-6">'
    print                    '<label class="sub-card">Serial Number'
    print                            '<input type="int" name="serial_number">'
    print                    '</label>'
    print            '</div>'
    print    '</div>'

    print    '<br>'

    print    '<div class="row">'
    print            '<div class="col-md-12 sub-card-submit">'
    print                    '<input type="submit">'
    print            '</div>'
    print    '</div>'

    print    '</form>'



def add_module(serial_number):
    try:
        db = connect(1)
        cur = db.cursor()

        cur.execute("INSERT INTO Card set sn = '%s'; " % (serial_number)) 
        #print '<div> INSERT INTO Card set sn = %s; </div>' %(serial_number)
        db.commit()
        db.close()
    except mysql.connector.Error as err:
       print("<h3>Serial number already exists!</h3>")

def add_id(sn, qid):
	try:
		db = connect(1)
		cur = db.cursor()
		cur.execute("UPDATE Card SET unique_id ='{1}' WHERE sn ={0};".format(sn, qid))
		print "<span style='color: green'>SUCCESS:</span><br>"
		print "<span>UPDATE Card SET unique_id ='{1}' WHERE sn ={0};</span><br><br>".format(sn, qid)
		print "<span><a href='home_page.py'>Go back home</a></span>"
		db.commit()
		db.close()
	except mysql.connector.Error as err:
		print "<span style='color: red'>ERROR</span><br>"
		print err
#		print("<h3>Serial number already exists!</h3>")

def add_note(sn, note):
#	note = MySQLdb.escape_string(note)

	try:
		db = connect(1)
		cur = db.cursor()
		
		# The following method escapes characters correctly:
		cmd = "INSERT INTO Card_Notes (sn, note, date_time) VALUES (%s, %s, %s)"
		values = (sn, note, time.strftime("%d/%m/%Y %I:%M:%S"))
		cur.execute(cmd, values)
#		cur.execute("INSERT Card_Notes SET sn={0}, note='{1}', date_time='{2}';".format(sn, note, time.strftime("%d/%m/%Y %I:%M:%S")))
#		print "<span style='color: green'>SUCCESS:</span><br>"
#		print "<span><a href='home_page.py'>Go back home</a></span>"
		db.commit()
		db.close()
		return True
	except mysql.connector.Error as err:
		print "<span style='color: red'>ERROR</span><br>"
		print err
		print "<br><br>"
		print note
		return False
#		print("<h3>Serial number already exists!</h3>")

