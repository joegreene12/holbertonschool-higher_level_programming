import peewee

my_models_db = peewee.SqliteDatabase("my_models_db", pragmas=(('foreign_keys', True),))

class BaseModel(peewee.Model):

    id = peewee.PrimaryKeyField(unique=True)

    class Meta:
        database = my_models_db
        order_by = ('id', )

class School(BaseModel):

    name = peewee.CharField(128, null=False)

    def __str__(self):
        return School: <name> (id)

class Batch(BaseModel):
    school = peewee.ForeignKeyField(School, related_name="students", on_delete="CASCADE")
    name = peewee.CharField(128, null=False)

    def __str__(self):
        return Batch: <name> (id)
class User(BaseModel):

    first_name = peewee.CharField(128, default="")
    last_name = peewee.CharField(128, null=False)
    age = peewee.IntegerField(null=False)

    def __str__(self):
        return User: <first_name> <last_name> (id)

class Students(User):

    batch = peewee.ForeignKeyField(Batch, related_name="students", on_delete="CASCADE")

    def __str__(self):
        return Student: <first_name> <last_name> (<id>) part of the batch: <batch>
