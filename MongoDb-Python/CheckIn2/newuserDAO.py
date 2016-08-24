import string

class NewuserDAO(object):


    def __init__(self, database):
        self.db = database
        self.new_users = database.new_users


    def find_names(self):
        l = []
        for each_name in self.new_users.find():
            l.append({'name':each_name['name'], 'email':each_name['email'],'address':each_name['address'],'password':each_name['password']})

        return l


    def insert_name(self,newname,newemail,newaddress,newpassword):
        newname = {'name':newname,'email':newemail,'address':newaddress,'password':newpassword}
        self.new_users.insert(newname)
