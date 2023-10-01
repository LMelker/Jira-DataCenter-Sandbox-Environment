

const request = require("request")
const fs = require("fs")

image_stream = fs.createReadStream("family.jpg")

var form = {"image":image_stream}

request.post({url:"http://localhost:5000/v1/vision/face", formData:form},function(err,res,body){

    // response = JSON.parse(body)
    // predictions = response["predictions"]

    // console.log(response)
})