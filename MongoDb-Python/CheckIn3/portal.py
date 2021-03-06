import bottle
import pymongo
import newpatientDAO

@bottle.route('/')
def newpatient_index():
    new_patients_list = newpatient.find_names()
    return bottle.template('index', dict(new_patient = new_patients_list))

@bottle.route('/newpatient', method='POST')
def insert_newpatient():
    name = bottle.request.forms.get("name")
    email = bottle.request.forms.get("email")
    address = bottle.request.forms.get("address")
    dieases = bottle.request.forms.get("dieases")
    age= bottle.request.forms.get("age")
    newpatient.insert_name(name,email,address,dieases,age)
    bottle.redirect('/')


connection_string = "mongodb://localhost"
connection = pymongo.MongoClient(connection_string)
database = connection.patient
newpatient = newpatientDAO.NewpatientDAO(database)

bottle.debug(True)
bottle.run(host='localhost', port=8082)
