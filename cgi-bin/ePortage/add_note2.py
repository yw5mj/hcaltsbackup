#!/usr/bin/python

import cgi
import base
import home_page_list

# Print basic HTML stuff:
base.begin()

form = cgi.FieldStorage()

if form.getvalue('note'):
	note = cgi.escape(form.getvalue('note'))
	serial_num = cgi.escape(form.getvalue('serial_num'))
	card_id = cgi.escape(form.getvalue('card_id'))
	result = home_page_list.add_note(serial_num, note)
	
	# HTML actions:
	if result:
		base.header_redirect_module_notes(card_id, serial_num)
	else:
		base.top()
#	print card_id, serial_num, qid

base.bottom()
