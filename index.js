const express = require('express');
const app = express();

app.get('/',function(req,res){
    res.send("Website is created");
});

app.listen(3000,function(){
    console.log('listening on 3000');
})