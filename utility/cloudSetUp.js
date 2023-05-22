const cloudinary = require('cloudinary').v2;


// Configuration 
cloudinary.config({
  cloud_name: "dc2kyklsx",
  api_key: "423723951187848",
  api_secret: "VR-PiQGvQj3_o5VXye4MclhqAl8"
});

module.exports = cloudinary;