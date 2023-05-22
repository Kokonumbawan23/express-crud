function applyExtraSetup(sequelize) {
    const { User, Role, Certificate, Image } = sequelize.models;
  
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

    User.hasOne(Image, {
      foreignKey: "image_id",
      targetKey: "id" 
    })

    Image.belongsTo(User,{
      foreignKey: "user_id",
      targetKey: "id"
    });
  
  }
  
  module.exports = applyExtraSetup;
  