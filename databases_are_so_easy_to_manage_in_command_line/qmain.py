import sys
from models import BaseModel
from models import School
from models import Batch
from models import User
from models import Student


if len(sys.argv) < 2:
    print "Please enter an action"
elif sys.argv[1] in ["create", "print", "insert", "delete"]:
    # print sys.argv[1]
    # if "create":

else:
    print "Undefined action " + sys.argv[1]

if (sys.argv[1] == "create"):
try:
    School.create_table()
except peewee.OpertationalError:
    pass

try:
    Batch.create_table()
except peewee.OpertationalError:
    pass

try:
    User.create_table()
except peewee.OpertationalError:
    pass

try:
    Student.create_table()
except peewee.OpertationalError:
    pass



if sys.argv[2] == :
    School.create(name= argv[3])
    print New school: School: self.name, self.id
elif:
    argv[2] == "batch"
    Batch.create(school= array[3], name= argv[4])
    print New batch: Batch: self.school, self.name
elif:
    argv[2] == "user"
    User.create(first_name = argv[3], last_name = argv[4], age = argv[5])
    print New user: User: self.first_name, self.last_name, self.age
else:
    Student.create(age = argv[3], last_name = argv[4], first_name = argv[5])
    print New student: Student: self.age, self.last_name, self.first_name







# if sys.argv[2] == model name in lowercase:
