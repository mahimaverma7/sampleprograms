import string

class NewpatientDAO(object):


    def __init__(self, database):
        self.db = database
        self.new_patient = database.new_patient


    def find_names(self):
        l = []
        for each_name in self.new_patient.find():
            l.append({'name':each_name['name'], 'email':each_name['email'],'address':each_name['address'],'dieases':each_name['dieases'], 'age':each_name['age']})

        return l


    def insert_name(self,newname,newemail,newaddress,newdieases,newage):
        newname = {'name':newname,'email':newemail,'address':newaddress,'dieases':newdieases,'age':newage}
        self.new_patient.insert(newname)
