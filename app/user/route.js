var express = require("express");
var router = express.Router();
const getDataXlsx = require("../../utils/readFromXlsx");

/* GET home page. */
router.get("/", async (req, res, next) => {
  console.log("safaw");
  const data = await getDataXlsx();
  console.log(data)
//   res.send("<a href=\"foo\">bar</a>")
  res.json(data)
    
});

router.get("/data", async (req, res, next) => {
  
});

module.exports = router;
