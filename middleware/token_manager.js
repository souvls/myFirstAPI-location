require('dotenv').config();

//get jwt
var jwt = require('jsonwebtoken');

class TokenManager{

    //method create token
    static getGenerateAccessToken(payload){
        return jwt.sign({"email":payload},process.env.TOKEN_KEY,{"expiresIn":"1h"})
    }
    static getVerifyToken = (req,res,next)=>{
        const tokenHeader =  req.headers.authorization
        //Check the header contains the token or not.
        if(tokenHeader){
            try{
                //convert token to object and save to req.user
                const token = req.headers.authorization.split(" ")[1];
                const decoded = jwt.verify(token,process.env.TOKEN_KEY);
                req.data = decoded;
    
            }catch(err){
                return res.status(401).json({status:"no",msg:"Invalid token"});
            }
        }else{
            return res.status(401).json({status:"no",msg:"A token is required for authentication"});

        }
        return next();
    }
}
module.exports = TokenManager;