const { error } = require("console");
const { User, Role, Image } = require("../../models");
const { generateAccessToken, deactivateAccessToken } = require("../../utility/TokenManager");
const bcrypt = require('bcrypt');

// cloudinary set up
const cloudinary = require("../../utility/cloudSetUp");

const fs =require('fs');

module.exports = {
  getAllUser: async (req, res, next) => {
    try {
      const user = await User.findAll({
        attributes: { exclude: ["password", "createdAt", "updatedAt"] },
        include: [
          {
            model: Role,
            attributes: [],
            where: {
              roleName: "member",
            },
          },
        ],
      });

      res.status(200).json({
        status: "success",
        message: "Successfully get All user",
        data: user,
      });
    } catch (error) {
      next(error);
    }
  },
  getUserById: async (req, res, next) => {
    try {
      const { userId } = req.params;
      const user = await User.findOne({
        where: {
          id: userId,
        },
        attributes: {
          exclude: ["password", "createdAt", "updatedAt"],
        },
        include: {
          model: Role,
          attributes: [],
          where: {
            roleName: "member",
          },
        },
      });

      if (user) {
        res.status(200).json({
          message: "Success getting user data",
          data: user,
        });
      }

      res.status(404).json({
        message: "User not found",
      });
    } catch (error) {
      next(error);
    }
  },

  getUserByDivisi: async (req, res, next) => {
    try {
      const { divisi } = req.params;
      const user = await User.findAll({
        where: {
          divisi: "mobile",
        },
        include: {
          model: Role,
          attributes: [],
          where: {
            roleName: "member",
          },
        },
      });

      res.status(200).json({
        message: "Success getting user data",
        data: user,
      });
    } catch (error) {
      next(error);
    }
  },
  loginUser: async (req, res, next) => {
    try {
      const { email, password } = req.body;

      const user = await User.findOne({
        where: {
          email ,
        },
      });
      if (!user) {
        throw new Error("User not found");
      }

      if (password !== user.password) {
        throw new Error(
          "Username and password mismatch, Check your username or password"
        );
      }

      const accessToken = generateAccessToken({
        id: user.id,
        name: user.fullName,
        jabatan: user.jabatan,
        email: user.email,
      });

      res.status(200).json({
        message: "Login success",
        data: {
          accessToken,
          user: {
            name: user.fullName,
            email: user.email
          }
        },
      });

    } catch (error) {
      next(error);
    }
  },
  registerUser : async (req,res,next) => {

    try {
      const {email, password, username} = req.body;

      const user = await User.findOne({
        where: {
          email,
        },
      });

      if (user) {
        throw new Error("Email already Taken");
      }

      const response = await User.create({
        email,
        password,
        username,
        fullName: "",
        jabatan: "member",
        id_role : 1,
        phoneNumber: "",
        waNumber: "",
        divisi: "",
        periode: "",
        image_id: 0,
      });

      res.status(200).json({
        message: "success",
        data: response
      });


    } catch (error) {
      next(error);
    }

  }, 
  uploadProfileImage: async (req, res, next) => {
    try {
      
      const file = req.file;

      const name = req.user.name.replace(/\s+/g,"-")

      const cloudRes = cloudinary.uploader.upload(
        file.path,
        { public_id: name + "-" + Math.random() * 1000 }
      );

      const resData = await cloudRes;

      fs.unlink(file.path, (err)=>{
        if(err){
         throw err;
        }
      });

      const image = await Image.create({
        user_id: req.user.id,
        url: resData.secure_url
      })

      res.status(200).json({
        message: "Success uploading user image",
        data: image,
      });

    } catch (error) {
      next(error);
    }
  },

  logoutUser: async (req,res,next) => {

   try {

    console.log(req.user);

    const accessToken = deactivateAccessToken(
      {
        id: req.user.id,
        name: req.user.name,
        jabatan: req.user.jabatan,
        email: req.user.email,
      }
    );

    res.status(200).json({
      message: "Logout success",
    });
   } catch (error) {
    next(error);
   }
  }
  

};
