import bottle
import pymongo
import newuserDAO

@bottle.route('/')
def newuser_index():
    new_users_list = newuser.find_names()
    return bottle.template('index', dict(new_users = new_users_list))

@bottle.route('/newguest', method='POST')
def insert_newguest():
    name = bottle.request.forms.get("name")
    email = bottle.request.forms.get("email")
    address = bottle.request.forms.get("address")
    password = bottle.request.forms.get("password")
       
    newuser.insert_name(name,email,address,password)
    bottle.redirect('/')


connection_string = "mongodb://localhost"
connection = pymongo.MongoClient(connection_string)
database = connection.users
newuser = newuserDAO.NewuserDAO(database)

bottle.debug(True)
bottle.run(host='localhost', port=8082)
