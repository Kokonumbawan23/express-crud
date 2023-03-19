var express = require("express");
var router = express.Router();
const { getUserCertificate } = require('./handler')

/* GET home page. */
router.get("/:id", getUserCertificate);


module.exports = router;
