const express=require('express');
const mongoose=require('mongoose');
const app=express();
const DB="mongodb+srv://YASH:mt42yg7GroMvLy8J@cluster0.yuxiaiu.mongodb.net/?retryWrites=true&w=majority";

const authRouter=require('./routes/auth.js');
const adminRouter=require('./routes/admin.js');

app.use(express.json());
app.use(authRouter);
app.use(adminRouter);

mongoose.connect(DB).then(()=>{
  console.log('Connection Successful');
}).catch((e)=>{
  console.log(e);
})


app.listen(3000,"0.0.0.0",()=>{
   console.log('Connected at Port 3000');
});
