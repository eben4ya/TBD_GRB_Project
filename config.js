// DB Configuration
module.exports = {
  db: {
    user: process.env.USER_DB,
    host: process.env.HOST_DB,
    database: process.env.DB_NAME,
    password: process.env.PASSWORD_DB,
    port: process.env.PORT_DB,
  },
};