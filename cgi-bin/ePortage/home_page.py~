#!/usr/bin/python

import cgi
import base
import home_page_list
import cgitb
cgitb.enable()


#cgi header
print "Content-type: text/html"
print
print "<html><head>"
print ""
print "</head><body>"

base.header(title='ePortage Home Page')
base.top()

print    '<div class="row">'
print            '<div class="col-md-3">'
print            '<h2>List of All Boards</h2>' 
print            '<b><em>(Sorted by Serial Number)</em></b>'
print            '</div>'
print            '<div class="col-md-3">'
print                    '<br><br>'
print                    '<a href="add_module.py">'
print                            '<button type="button">Add a New Board</button>'
print                    '</a>'
print            '</div>'
print    '</div>'

print   '<br><br>'

print "</body></html>"

home_page_list.render_list_module()

base.bottom()
