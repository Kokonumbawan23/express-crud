const { Model } = require("sequelize");

module.exports = (sequelize, DataTypes) => {
  class Image extends Model {}

  Image.init(
    {
      // Model attributes are defined here
      id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true,
        autoIncrement: true
      },
      user_id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        // allowNull defaults to true
      },
      url: {
        type: DataTypes.STRING,
        allowNull: false,
      }
    },
    {
      // Other model options go here
      sequelize, // We need to pass the connection instance
      modelName: "Image", // We need to choose the model name
      tableName: "image",
      timestamps: false,
    }
  );

  return Image;
};
