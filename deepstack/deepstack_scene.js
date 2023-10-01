const request = require("request")
const fs = require("fs")

image_stream = fs.createReadStream("test-image3.jpg")

var form = {"image":image_stream}

request.post({url:"http://localhost:5000/v1/vision/scene", formData:form},function(err,res,body){

   response = JSON.parse(body)
   console.log(response)
})


