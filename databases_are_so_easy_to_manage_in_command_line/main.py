
import sys
if len(sys.argv) < 2:
    print "Please enter an action"
elif sys.argv[1] in ["create", "print", "insert", "delete"]:
    print sys.argv[1]
else:
    print "Undefined action " + sys.argv[1]
