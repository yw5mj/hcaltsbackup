#!/usr/bin/python
import cgi
import base
import home_page_list
import module_functions
from connect import connect

# Deal with URL arguments:
form = cgi.FieldStorage()
card_id = base.cleanCGInumber(form.getvalue('card_id'))
serial_num = base.cleanCGInumber(form.getvalue('serial_num'))

# Print basic HTML stuff:
base.begin()
base.header(title='ATD: Board {0}'.format(serial_num))		# Print the header
base.top()
#print 'card_id = ', card_id
#print  'serial_num = ', serial_num

module_functions.add_test_tab(serial_num, card_id)

revokes=module_functions.Portage_fetch_revokes(serial_num)

db = connect(0)
cur = db.cursor()

cur.execute("SELECT test_type, name FROM Test_Type WHERE required = 1 order by relative_order ASC")
for test_type in cur:
	test_type_id=test_type[0]
	test_name=test_type[1]
	attempts =  module_functions.Portage_fetch(test_type_id, serial_num) 
	module_functions.ePortageTest(test_type_id, serial_num, test_name, revokes , attempts)

module_functions.moduleNotesDump( serial_num )

module_functions.export_to_xml(serial_num, card_id)

base.bottom()
