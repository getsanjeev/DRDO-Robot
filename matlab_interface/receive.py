import os
os.popen("nc -l 2999 >> image.jpg")
print "Recieved Image"
os.popen("nc -l 2999 >> sent.txt")
print "Recieved text"
