#!/usr/bin/python

# IMPORTS:
import cgi
import base
import home_page_list
import cgitb
cgitb.enable()
from summary_functions import get
# /IMPORTS

# FUNCTIONS:
def main():
	base.begin()		# Print the preamble and opening html tag.
	base.header(title='Acceptance Test Database')		# Print the header.
	base.top()		# Print the top portion of the body (title, buttons). This remains the same for every page.
	print get()
	base.bottom()		# Print footer (if applicable) and closing body and html tags.
# /FUNCTIONS

if __name__ == "__main__":
	main()
