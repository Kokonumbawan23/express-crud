'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    /**
     * Add seed commands here.
     *
     * Example:
     * await queryInterface.bulkInsert('People', [{
     *   name: 'John Doe',
     *   isBetaMember: false
     * }], {});
    */
   await queryInterface.bulkInsert("image",[
    {
      id: 0,
      user_id: 52,
      url: "-"
     }
   ]);
  },

  async down (queryInterface, Sequelize) {
    return queryInterface.bulkDelete('image', null, {});
  }
};
