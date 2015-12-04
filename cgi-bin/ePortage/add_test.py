#!/usr/bin/python

import cgi
import base
import home_page_list
import add_test_functions


#cgi header
print "Content-type: text/html\n"

form = cgi.FieldStorage()
card_id = base.cleanCGInumber(form.getvalue('card_id'))
serial_num = base.cleanCGInumber(form.getvalue('serial_num'))
suggested_test = base.cleanCGInumber(form.getvalue('suggested'))

base.header(title='ADT: Add test')
base.top()

add_test_functions.add_test_template(card_id, serial_num, suggested_test)

base.bottom()
