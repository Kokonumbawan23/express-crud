function applyExtraSetup(sequelize) {
    const { User, Role, certificate } = sequelize.models;
  
    Role.hasMany(User, {
      foreignKey: "id_role",
      targetKey: "id",
    });
  
    User.belongsTo(Role, {
      foreignKey: "id_role",
      targetKey: "id",
    });

    User.hasMany(certificate, {
        foreignKey: "id_user",
        targetKey: "id",
    });
  
    certificate.belongsTo(User, {
      foreignKey: "id_user",
      targetKey: "id",
    });
  
  }
  
  module.exports = applyExtraSetup;
  