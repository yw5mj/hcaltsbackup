#!/usr/bin/python

import cgi
import base
from connect import connect
import mysql.connector
from testers_functions import get
import module_functions



#cgi header
print "Content-type: text/html\n"

base.header(title='Summary')
base.top()


print '<div class="row">'
print    '<div class="col-md-12">'
print        '<table class="table" style="width:650px" align="center">'
print                '<tr>'
print                    '<th > Name </th>'
print                    '<th > ID </th>'
print                '</tr>'
userInfo = get()
for user in userInfo:

    print '<tr>'
    print '<td align="left">',user['name'],'</td>'
    print '<td align="left">',user['id'],'</td>'
    print '</tr>'

print         '</table>'
print    '</div>'
print '</div>'

print '<br><br>'
print '<form action="add_tester.py" method="post" enctype="multipart/form-data">'
print '<div class="col-md-6">'
print 'tester name:<br>'
print '<textarea name="testerName" cols="35" rows="1"></textarea><br>'
print '<input type="submit"><br>'
print '</div>'
print '</form>'

base.bottom()
