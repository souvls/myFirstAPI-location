const express = require('express')
const cors = require('cors')
var User = require('../model/Users')
const router = express()

//get datdbase
const connecttion = require('../config/database')

//get hash a password
const bcrypt = require('bcrypt');
const saltRounds = 10;

//get jwt
const token = require('../middleware/token_manager');

// JSONParser dùng để chuyển string to Json
const bodyParser = require('body-parser')
const jsonParser = bodyParser.json()

router.post('/login', jsonParser,function (req, res, next) {
    const {email,password} = req.body;

    //validate user input
    if(!(email && password)){
        res.status(400).json({status:'no',msg:'All input is requided'})
    }

    try{
        //search user
        connecttion.query(
            "SELECT * FROM `users` WHERE name = ? or email = ?",
            [email,email],
            (err,results,firlds)=>{
                if(err){
                    console.log("Error! search user.",err)
                    return res.status(400).json({status:'no',msg:'error!, search user'});
                }
                //if user not exist
                if(results.length == 0){
                    return res.status(409).json({status:'No',msg:"user not found."})
                }
                //check password
                bcrypt.compare(password,results[0].password,(err,isLogin)=>{
                    if(err){
                        console.log(err)
                        return res.status(400).json({status:'no',msg:'error!, compare password'});
                    }
                    //islogin
                    if(isLogin){
                        //save and sent Token
                        const myToken = token.getGenerateAccessToken(email);
                        return res.status(200).json({status:'ok',msg:'login succusses',token:myToken});
                    }else{
                        return res.status(400).json({status:'no',msg:'login failed, password not match'});
                    }
                })
            }

        )
    }catch(err){
        console.log(err);
        return res.status(500).json({status:'no',msg:'eror!, do not connect database'});
    }

})

//register
router.post("/register",jsonParser,async(req, res)=>{
    const {name,email,password} = req.body;

    //validate user input
    if(!(name && email && password)){
        res.status(400).json({status:'no',msg:'All input is requided'})
    }

    try{
        // Check if user exists
        connecttion.query(
            "SELECT * FROM `users` WHERE name = ? OR email = ?",
            [name,email],
            async (err,results,firlds)=>{
                if(err){
                    console.log("Error! Check if user exists.",err)
                    return res.status(400).json({status:'no',msg:'error!, Check if user exists'});
                }

                //if user is exist : return please login
                if(results.length >= 1){
                    return res.status(409).json({status:'No',msg:"User already exist, Please Login."})

                //if user not exist
                //create new user
                }else{
                    //Encrypt password
                    encryptedPassword = await bcrypt.hash(password,saltRounds);

                    //insert data our database
                    connecttion.query(
                        "INSERT INTO `users`(`name`, `email`, `password`) VALUES (?,?,?)",
                        [name,email.toLowerCase(),encryptedPassword],
                        (err,results,firlds)=>{
                            if(err){
                                console.log("Error! insert a user into the database.",err)
                                return res.status(400).json({status:'no',msg:'error!,insert user'});
                            }

                            //save and sent Token
                            const myToken = token.getGenerateAccessToken(email);
                            return res.status(201).json({status:'ok',msg:"New user successfully created.",token:myToken})
                        }
                    );
                }
            }
        )

    }catch(err){
        console.log(err);
        return res.status(500).json({status:'no',msg:'eror!, do not connect database'});
    }
})

module.exports = router;