#!/usr/bin/python

import cgi
import cgitb ; cgitb.enable() 
import base
from connect import connect
import mysql.connector
from cardInfoSetup_functions import get

#cgi header
print "Content-type: text/html\n"

base.header(title='Card Info Setup')
base.top()

print '<div class="row">'
print    '<div class="col-md-12">'
print        '<table class="table" style="width:100%">'
print            '<tbody>'
print                '<tr>'
print                    '<th> Name </th>'
print                    '<th> Description </th>'
print                '</tr>'
cardInfo = get()
for info  in cardInfo:

    print '<tr align=left>'
    print '<td>',info['name'],'</td>'
    print '<td>',info['desc'],'</td>'
    print '</tr>'

print            '</tbody>'
print         '</table>'
print    '</div>'
print '</div>'

print '<br><br>'
print '<form action="add_cardInfoType.py" method="post" enctype="multipart/form-data">'
print '<div class="col-md-6">'
print 'test name:<br>'
#print '<input type="text" name="testName"><br>'
print '<textarea name="infoName"></textarea><br>'
print 'info description (brief):<br>'
#print '<input type="text" name="descShort"><br>'
print '<textarea name="descShort" rows="5" cols="50"></textarea><br>'
print 'info description (long):<br>'
#print '<input type="text" name="descLong"><br>'
print '<textarea name="descLong" rows="5" cols="100"></textarea><br>'
print '<input type="submit" value="add card info type">'
print '</div>'
print '</form>'

base.bottom()
