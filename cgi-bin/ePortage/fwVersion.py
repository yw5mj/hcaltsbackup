#!/usr/bin/python

import cgi
import base
from connect import connect
import mysql.connector
from summary_functions import get, id_from_name
import module_functions



#cgi header
base.begin()
base.header(title='ATD: F/W Versions')
base.top()

List_of_rows = get()
for li in List_of_rows[4]:
	print '///', li

print '<div class="row">'
print    '<div class="col-md-12">'
print        '<table class="table" style="width: 100%; font-size: 12px">'
print            '<tbody>'
print                '<tr>'
print                    "<th style='background-color: #F0F0F0; font-size: 16px;'> S/N </th>"
print                    "<th colspan=2 style='background-color: #F0F0F0; text-align: center; font-size: 16px;'> Tests Remaining </th>"
print                    '<th colspan=2 style="background-color: #D7FFCA; text-align: center; font-size: 16px;"> Tests Passed </th>'
print                    '<th colspan=2 style="background-color: #FFD4D4; text-align: center; font-size: 16px;"> Tests Failed </th>'
#print                    '<th> Final Status </th>'
print                '</tr>'

background_colors = {
	-1: "#F6F6F6",
	0: "#FFE5E5",
	1: "#EBFFE4",
}

for row in List_of_rows:
#	print row[2]
	# Determine quality of board:
	good = -1
	if len(row[4]):
		good = 0
	elif not len([r for r in row[3] if r[1] not in [23, 24]]) and not len(row[4]):
		good = 1
	
	# Print row:
	print "<tr style='background-color: {0}'>".format(background_colors[good])
	print "<td> <a href='module.py?card_id=%(id)s&serial_num=%(serial)s'>%(serial)s</a></td>" %{'serial':row[0], 'id':row[1]}
	#print '<td> %s </td>' %row[1]
	
	# Unknown:
	print '<td><ul>'
	for tests in row[3][0:][::2]:
		print '<li> <a href="add_test.py?serial_num=%d&suggested=%d">%s</a>' %(row[0],tests[1],tests[0])
		pass
	print '</ul></td>'

	print '<td><ul>'
	for tests in row[3][1:][::2]:
		print '<li> <a href="add_test.py?serial_num=%d&suggested=%d">%s</a>' %(row[0],tests[1],tests[0])
	print '</ul></td>'
	
	# Successes:
	print '<td><ul>'
	for tests in row[2][0:][::2]:
		print "<li><a href='module.py?card_id={1}&serial_num={0}#test-{3}'>{2}</a></li>".format(row[0], row[1], tests, id_from_name(tests))
	print '</ul></td>'

	print '<td><ul>'
	for tests in row[2][1:][::2]:
		print "<li><a href='module.py?card_id={1}&serial_num={0}#test-{3}'>{2}</a></li>".format(row[0], row[1], tests, id_from_name(tests))
	print '</ul></td>'
	
	# Failures:
	print '<td><ul>'
	for tests in row[4][0:][::2]:
		print "<li><a href='module.py?card_id={1}&serial_num={0}#test-{3}'>{2}</a></li>".format(row[0], row[1], tests, id_from_name(tests))
	print '</ul></td>'

	print '<td><ul>'
	for tests in row[4][1:][::2]:
		print "<li><a href='module.py?card_id={1}&serial_num={0}#test-{3}'>{2}</a></li>".format(row[0], row[1], tests, id_from_name(tests))
	print '</ul></td>'

#	print '<td> ? </td>'

	print '</tr>'

print '</tbody></table></div></div><br><br>'


base.bottom()

