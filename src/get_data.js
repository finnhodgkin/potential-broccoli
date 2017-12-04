const dbConnection = require('./../database/db_connection.js');

const getData = cb => {
  dbConnection.query(`SELECT * FROM superheroes`, (err, res) => {
    if (err) cb(err);
    const { rows: superheroes } = res;
    cb(null, superheroes);
  });
};

module.exports = getData;
