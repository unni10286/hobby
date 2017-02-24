#!/usr/bin//python

import subprocess

#path=subprocess.Popen(["pwd"],stdout=subprocess.PIPE)
path=subprocess.Popen(["cat /home/unni/.profile"],stdout=subprocess.PIPE)
p2= path.communicate()[0]

print p2
