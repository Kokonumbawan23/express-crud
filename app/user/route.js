var express = require("express");

// multer set up
const path = require('path');
const multer = require("multer");
const upload = multer({dest: "uploads/", fileFilter: (req,file,cb) => {
    var ext = path.extname(file.originalname);
        if(ext !== '.png' && ext !== '.jpg' && ext !== '.gif' && ext !== '.jpeg') {
            return cb(new Error('Only images are allowed'))
        }
        cb(null, true)
}});

var router = express.Router();

const {
  getAllUser,
  getUserById,
  loginUser,
  registerUser,
  getUserByDivisi,
  uploadProfileImage,
  logoutUser,
} = require("./handler");
const AuthenticationToken = require("../../middleware/AuthToken");

/* GET home page. */
router.get("/", AuthenticationToken, getAllUser);
router.get("/:userId", AuthenticationToken, getUserById);
router.get("/divisi/:divisi", AuthenticationToken, getUserByDivisi);
router.post("/logout", AuthenticationToken, logoutUser);
router.post("/login", loginUser);
router.post("/register", registerUser);
router.post(
  "/image",
  AuthenticationToken,
  upload.single("upload"),
  uploadProfileImage
);
// router.get("/data", async (req, res, next) => {

// });

module.exports = router;
