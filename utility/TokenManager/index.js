const jwt = require("jsonwebtoken");

const accessTokenSecretKey = "itc-secret-key";

function generateAccessToken(userPayload) {
  return jwt.sign(userPayload, accessTokenSecretKey, {
    subject: userPayload.name,
    expiresIn: "15m",
  });
}

function deactivateAccessToken(userPayload){
  return jwt.sign(userPayload, "deactivated123", {
    subject: userPayload.name,
    expiresIn: "1s",
  })
}

module.exports = {
  generateAccessToken,
  deactivateAccessToken
};