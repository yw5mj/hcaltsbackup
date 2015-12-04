#!/usr/bin/python

import cgi
import cgitb ; cgitb.enable() 
import base
from connect import connect
import mysql.connector
from testSetup_functions import get
import module_functions



#cgi header
print "Content-type: text/html\n"

base.header(title='Setup')
base.top()

print '<div class="row">'
print    '<div class="col-md-12">'
print        '<table class="table" style="width:100%">'
print            '<tbody>'
print                '<tr>'
print                    '<th> Name </th>'
print                    '<th> Description </th>'
print                    '<th> Required? </th>'
print                '</tr>'
testInfo = get()
for test  in testInfo:

    print '<tr align=left>'
    print '<td>',test['name'],'</td>'
    print '<td>',test['desc'],'</td>'
    if test['req'] == 0 :
        print '<td>false</td>'
    else :
        print '<td>true</td>'
    print '</tr>'

print            '</tbody>'
print         '</table>'
print    '</div>'
print '</div>'

print '<br><br>'
print '<form action="add_testType.py" method="post" enctype="multipart/form-data">'
print '<div class="col-md-6">'
print 'test name:<br>'
#print '<input type="text" name="testName"><br>'
print '<textarea name="testName"></textarea><br>'
print 'test description (brief):<br>'
#print '<input type="text" name="descShort"><br>'
print '<textarea name="descShort" rows="5" cols="50"></textarea><br>'
print 'test description (long):<br>'
#print '<input type="text" name="descLong"><br>'
print '<textarea name="descLong" rows="5" cols="100"></textarea><br>'
print '<input type="submit" value="add test type">'
print '</div>'
print '</form>'

base.bottom()
