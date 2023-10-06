require('dotenv').config();
var express = require('express')
var cors = require('cors')

//get token manager
const token = require('./middleware/token_manager');

//get router quản lý  user
var routerUser = require('./routes/routerUser')

//get rout quản lý  location
var routerLocation = require('./routes/routerLocation')

// JSONParser dùng để chuyển string to Json
var bodyParser = require('body-parser')
var jsonParser = bodyParser.json()

var app = express()

app.use(cors())

app.get('/', jsonParser,token.getVerifyToken,  function (req, res, next) {
    res.status(200).json({status:'ok',msg: 'Welcome to my API 🙏',data:req.data});
})

app.use(routerUser)
app.use(routerLocation)




//create server
app.listen(4001, jsonParser, function () {
  console.log('CORS-enabled web server listening on port: 4001');
})