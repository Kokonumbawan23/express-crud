var express = require("express");
var router = express.Router();
const { getAllUser, getUserById, loginUser } = require('./handler')
const AuthenticationToken = require('../../middleware/AuthToken');
/* GET home page. */
router.get("/",AuthenticationToken, getAllUser);
router.get("/:userId",AuthenticationToken, getUserById);
router.post("/login", loginUser);
// router.get("/data", async (req, res, next) => {
  
// });

module.exports = router;
