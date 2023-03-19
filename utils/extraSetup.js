function applyExtraSetup(sequelize) {
    const { User, Role, Certificate } = sequelize.models;
  
    Role.hasMany(User, {
      foreignKey: "id_role",
      targetKey: "id",
    });
  
    User.belongsTo(Role, {
      foreignKey: "id_role",
      targetKey: "id",
    });

    User.hasMany(Certificate, {
        foreignKey: "id_user",
        targetKey: "id",
    });
  
    Certificate.belongsTo(User, {
      foreignKey: "id_user",
      targetKey: "id",
    });
  
  }
  
  module.exports = applyExtraSetup;
  