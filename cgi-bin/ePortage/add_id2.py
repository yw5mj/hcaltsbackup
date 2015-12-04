#!/usr/bin/python

import cgi
import base
import home_page_list

# Print basic HTML stuff:
base.begin()
base.header(title='Adding a unique ID...')
base.top()

form = cgi.FieldStorage()

if form.getvalue('unique_id'):
	qid = cgi.escape(form.getvalue('unique_id'))
	card_id = cgi.escape(form.getvalue('card_id'))
	serial_num = cgi.escape(form.getvalue('serial_num'))
	home_page_list.add_id(serial_num, qid)
#	print card_id, serial_num, qid

base.bottom()
