const { User, Role, Order } = require("../../models");

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
};
