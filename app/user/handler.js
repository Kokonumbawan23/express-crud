const { User, Role, Order } = require("../../models");
const {generateAccessToken} = require("../../utility/TokenManager")

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
  getUserById: async (req,res,next) => {
    try {
      const {userId} = req.params;
      const user = await User.findOne({
        where:{
          id: userId
        },
        attributes: {
          exclude: ["password", "createdAt", "updatedAt"]
        },
        include: {
          model: Role,
          attributes: [],
          where: {
            roleName: "member",
          },
        },
      });

      if(user){
        res.status(200).json({
          message: "Success getting user data",
          data: user
        });
      }

      res.status(404).json({
        message: "User not found",
      });
    } catch (error) {
      next(error);
    }
  },

  getUserByDivisi: async () => {
    try {
      const {divisi} = req.params;
    const user = await User.findAll({
      where: {
        divisi
      },
      include: {
        model: Role,
        attributes: [],
        where: {
          roleName: "member",
        },
      },
    })

    res.status(200).json({
      message: "Success getting user data",
      data: user
    });
    } catch (error) {
      next(error)
    }
  },
  loginUser : async (req,res,next) => {
    try {
      const {email,password} = req.body;

    const user = await User.findOne({
      where: {
        email,
      },
    });
    if (!user){
      throw new Error("User not found");
    }

    if(password !== user.password){
      throw new Error("Username and password mismatch, Check your username or password");
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
      },
    });
    } catch (error) {
      next(error);
    }
  }

};
