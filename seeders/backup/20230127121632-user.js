// import getDataXlsx from "../utils/readFromXlsx";
const getDataXlsx = require('../utils/readFromXlsx') 
/** @type {import('sequelize-cli').Migration} */

async function generateUser(){
  const data = await getDataXlsx();
  data.forEach(d => {
    d.password = Math.floor(1000 + Math.random() * 9000);
    d.periode = "2023";
    d.id_role = 1;
    d.image_id = 0;
    d.createdAt = new Date().toISOString().slice(0, 19).replace('T', ' ');
    d.updatedAt = new Date().toISOString().slice(0, 19).replace('T', ' ');

    if(!d.jabatan){
      d.jabatan = "member";
    }
  });

  return data;
}

module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.bulkInsert("Users", await generateUser());
  },

  async down (queryInterface, Sequelize) {
    await queryInterface.bulkDelete('Users', null, {});
  }
};
