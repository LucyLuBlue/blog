var logger = require ("morgan"),
cors = require ("cors"),
http = require ("http"),
express = require ("express"),
bodyParser = require ("body-parser"),
mongoose = require( 'mongoose');
require('dotenv').config();

var app = express();
//To post to Heroku, it can uses different ports or 3000
var port = process.env.PORT || 3000;
//var port = 3000;
var userCtrl = require('./user-controller');

app.use(logger('dev'));
app.use(bodyParser.json());
app.use(require('./routes'));

app.get('/users', userCtrl.createUser);
app.get('/users', userCtrl.getUsers);
app.get('/users/:id', userCtrl.getUser);
app.post('/users', userCtrl.createUser);
app.delete('/users/:id', userCtrl.deleteUser);
app.put('/users/:id', userCtrl.updateUser);

app.listen(port,function(err){
    console.log("listening on Port: " + port)
    console.log("MongoDB: " + process.env.MONGODB_URL);

});
//Here we paste the link from MongoDB (cluster)
mongoose.connect(process.env.MONGODB_URL);//we conect with mongodb
mongoose.connection.on('error', (err) => { 
    console.log('Mongodb Error: ', err); 
    process.exit();
});
mongoose.connection.on('connected', () => { 
    console.log('MongoDB is successfully connected');
});