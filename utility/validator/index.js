const {userLoginSchema} = require('./schema');

const validateUserLoginPayload = (payload) => {
    const validateResult = userLoginSchema.validate(payload);
    if(validateResult.error){
        throw new Error(validateResult.error.message);
    }
}

module.exports = {
    validateUserLoginPayload,
}