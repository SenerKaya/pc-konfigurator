import mysql from "mysql2";
   
// create the connection to database
const db = mysql.createConnection({

  // locale eingaben müssen eingegeben werden
  host: '127.0.0.1',
  user: 'root',
  password: '1234',
  database: 'backend',
  port: '3306',

  /*
  host: 'eu-cdbr-west-03.cleardb.net',
  user: 'bb4c5b38a41a34',
  password: '4cb240b5',
  database: 'heroku_784f1237e0be9a1',
  port: '3306',

   */
});
export default db;