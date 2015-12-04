#!/usr/bin/python

import os

#os.mkdir("/var/www/html/test")

f = open("/var/www/html/test/test.txt", "w")
f.write("hi")
print "Content-type: text/html\n\n"
print "Hello, World."
