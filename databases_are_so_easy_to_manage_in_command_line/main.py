import sys
from models import *

if len(sys.argv) < 2:
    print "Please enter an action"
elif sys.argv[1] == "create":
    # print "create"
    try:
        School.create_table()
    except peewee.OperationalError:
        pass

    try:
        Batch.create_table()
    except peewee.OperationalError:
        pass

    try:
        User.create_table()
    except peewee.OperationalError:
        pass

    try:
        Student.create_table()
    except peewee.OperationalError:
        pass



elif sys.argv[1] == "print":
    if sys.argv[2] == "school":
        for i in School.select():
            print i

    elif sys.argv[2] == "batch":
        for i in Batch.select():
            print i

    elif sys.argv[2] == "user":
        for i in User.select():
            print i

    elif sys.argv[2] == "student":
        for i in Student.select():
            print i

elif sys.argv[1] == "print_batch_by_school":
    try:
        schoolId = int(sys.argv[2])
        for j in Batch.select().where(Batch.school == schoolId):
            print j
    except:
        print "not a number"
        # bactchNum = int(sys.argv[2])
        # for i in Batch.select():

    try:
        if School.select().where(School.id == schooltableID).count() == 0:
            schooltableID = int(sys.argv[2]) 
            for k in School.select().where(School.id == schooltableID):
                print "School not found"
    except:
        print "hi"




elif sys.argv[1] == "insert":
    # print "insert"
    if sys.argv[2] == "school":
        schoolData = School.create(name= sys.argv[3])
        print "New school: " + str(schoolData)
    elif sys.argv[2] == "batch":
        batchData = Batch.create(school= sys.argv[3], name= sys.argv[4])
        print "New batch: " + str(batchData)
    elif sys.argv[2] == "user":
        userData = User.create(first_name = sys.argv[3], last_name = sys.argv[4], age = sys.argv[5])
        print "New user: " + str(userData)
    elif sys.argv[2] == "student":
        if len(sys.argv) == 6:
            studentData = Student.create(batch = sys.argv[3], age = sys.argv[4], last_name = sys.argv[5])
            print "New student: " + str(studentData)
        if len(sys.argv) == 7:
            studentData = Student.create(batch = sys.argv[3], age = sys.argv[4], last_name = sys.argv[5], first_name = sys.argv[6])
            print "New student: " + str(studentData)
    else:
        print "idk"


# Delete: Student: Hodor (3) part of the batch: Batch: Winter 2016 (1)
# "Student: %s %s (%d) part of the batch: %s" % (self.first_name, self.last_name, self.i


elif sys.argv[1] == "delete":
    # print "delete"

    if sys.argv[2] == "school":
        try:
            schoolID = School.get(School.id == sys.argv[3])
            print "Delete: " + str(schoolID)
            schoolID.delete_instance()
        except:
            print "Nothing to delete"

    elif sys.argv[2] == "batch":
        try:
            bacthID = Batch.get(Batch.id == sys.argv[3])
            print "Delete: " + str(batchID)
            bacthID.delete_instance()
        except:
            print "Nothing to delete"

    elif sys.argv[2] == "user":
        try:
            userID = User.get(User.id == sys.argv[3])
            print "Delete: " + str(userID)
            userID.delete_instance()
        except:
            print "Nothing to delete"

    elif sys.argv[2] == "student":
        try:
            studentID = Student.get(Student.id == sys.argv[3])
            print "Delete: " + str(studentID)
            studentID.delete_instance
        except:
            print "Nothing to delete"


    else:
        print "hi"















else:
    print "Undefined action " + sys.argv[1]
