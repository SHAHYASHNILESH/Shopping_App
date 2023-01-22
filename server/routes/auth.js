const express=require('express');
const mongoose=require('mongoose');
const bcryptjs=require('bcryptjs');
const jwt=require('jsonwebtoken');
const auth = require("../middlewares/auth");
const User=require('../models/user.js');
const authRouter=express.Router();

//Sign Up API
authRouter.post('/api/signup',async (req,res)=>{
  try{
     const { name, email, password }=req.body;
     const userExist=await User.findOne({email:email});
     const hashedPassword=await bcryptjs.hash(password,8);
     if(userExist){
         return res.status(400).json({
          message:'User Already Existing',
          data:userExist,
         });
     }

     else{
          const user = new User({name,email,password:hashedPassword });
          await user.save();
          return res.json({
           message:'User Signed Up Successfully',
           data:user,
         });
     }
   }
   catch(err){
     console.log(err);
  }
});

//Sign In API
authRouter.post('/api/signin',async (req,res)=>{
  try{
     const {email,password}=req.body;
     if (!email || !password) {
           return res.status(422).json({ error: "Please fill all the fields" });
     }
     const userLogin = await User.findOne({ email: email });
     if(!userLogin){
       return res.status(400).json({
          message:'User with the given email Not Found',
       });
     }
     else{
        const isMatch = await bcryptjs.compare(password, userLogin.password);
        if(!isMatch){
           return res.status(400).json({
                     message:'Incorrect Password',
           });
        }
        else{
          const token=jwt.sign({id:userLogin._id},"passwordKey");
          res.json({message:'User Logged In Successfully',token,...userLogin._doc});
        }
     }

  }
  catch(e){
   console.log(e);
  }
});

//Sign In API
authRouter.post('/tokenIsValid',async (req,res)=>{
  try{
     const token=req.header('x-auth-token');
     if(!token)return res.json(false);
     const verified=jwt.verify(token,"passwordKey");
     if(!verified)return res.json(false);
     const user=await User.findById(verified.id);
     if(!user)return res.json(false);
     res.json(true);

  }
  catch(e){
   console.log(e);
  }
});

authRouter.get('/',auth,async (req,res)=>{
  const user=await User.findById(req.user);
  res.json({...user._doc,token:req.token});
});


module.exports=authRouter;