var express = require("express");
var router = express.Router();
const { getAllUser } = require('./handler')
/* GET home page. */
router.get("/", getAllUser);

router.get("/data", async (req, res, next) => {
  
});

module.exports = router;
