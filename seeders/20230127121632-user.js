'use strict';
import getDataXlsx from "../utils/readFromXlsx";

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    const data = getDataXlsx
    await queryInterface.bulkInsert("users", [
      {
        id: 1,
        roleName: "Member",
      },
      {
        id: 2,
        roleName: "Admin",
      },
    ]);
  },

  async down (queryInterface, Sequelize) {
    /**
     * Add commands to revert seed here.
     *
     * Example:
     * await queryInterface.bulkDelete('People', null, {});
     */
  }
};
