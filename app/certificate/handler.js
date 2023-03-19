const { User, Role, Certificate } = require("../../models");

module.exports = {
  getUserCertificate: async (req, res, next) => {
    try {
        const certificate = await Certificate.findAll({
            attributes: { exclude: ["createdAt", "updatedAt","id_user"] },
            where: {
                id_user: req.params.id,
              },
          });

          res.status(200).json({
            message: "Successfully get Certificate",
            data: certificate,
          });
    } catch (error) {
      next(error);
    }
  },
};
