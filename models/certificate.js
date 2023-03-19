'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class certificate extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  certificate.init({
    name: DataTypes.STRING,
    deskripsi: DataTypes.STRING,
    penyelenggara: DataTypes.STRING,
    validUntil: DataTypes.DATE,
    id_user: DataTypes.INTEGER
  }, {
    sequelize,
    modelName: 'certificate',
  });
  return certificate;
};