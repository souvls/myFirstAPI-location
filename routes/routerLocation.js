var express = require('express')
var cors = require('cors')
const router = express()

//get model location
const Location = require('../model/Location')

//get datdbase
const connecttion = require('../config/database')

//get jwt
const token = require('../middleware/token_manager');

// JSONParser dùng để chuyển string to Json
var bodyParser = require('body-parser')
var jsonParser = bodyParser.json()

router.get('/location', jsonParser,token.getVerifyToken, function (req, res, next) {
    try{
        //get all location
        connecttion.query(
            "SELECT * FROM `locations`",
            (err,results,firlds)=>{
                if(err){
                    console.log("Error! select all location.",err)
                    return res.status(400).json({status:'no',msg:'error!, select all location'});
                }
                return res.status(409).json({status:'ok',msg:"list location.",data:results})
            }

        )
    }catch(err){
        console.log(err);
        return res.status(500).json({status:'no',msg:'eror!, do not connect database'});
    }
})

module.exports = router;