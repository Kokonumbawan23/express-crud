const Joi = require("joi");

const userLoginSchema = Joi.object({
    email: Joi.string().email().required(),
    password: Joi.string().required(),
}).unknown();

module.exports = {
    userLoginSchema,
}