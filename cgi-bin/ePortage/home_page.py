#!/usr/bin/python

# IMPORTS:
import cgi
import base
import home_page_list
import cgitb
cgitb.enable()
# /IMPORTS

# FUNCTIONS:
def print_home():
	print'''\t\t<div class="row">
			<div class="col-md-3">
				<h2>All Boards:</h2>
				<strong><em>(Sorted by serial number)</em></strong>
			</div>
			<div class="col-md-3">
				<br><br>
				<a href="add_module.py"><button type="button">Add a new board</button></a>
			</div>
		</div>
		<br><br>'''
	home_page_list.render_list_module()
# /FUNCTIONS

#cgi header
base.begin()		# Print the preamble and opening html tag.
base.header(title='Acceptance Test Database')		# Print the header.
base.top()		# Print the top portion of the body (title, buttons). This remains the same for every page.
print_home()		# Print what should appear on the home page. (Defined above.)
base.bottom()		# Print footer (if applicable) and closing body and html tags.
