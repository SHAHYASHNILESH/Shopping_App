const express=require('express');
const mongoose=require('mongoose');
const bcryptjs=require('bcryptjs');
const User=require('../models/user.js');
const authRouter=express.Router();


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

module.exports=authRouter;