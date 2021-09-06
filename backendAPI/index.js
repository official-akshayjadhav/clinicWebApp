const mysql = require("mysql");

// define connection parameters
var pool = mysql.createPool({
    host: "127.0.0.1",
    port: "3306",
    user: "root",
    password: "",
    database: "clinic_db",
});

// query
var query = "select * from admin;";

// create mysql connection
pool.getConnection((err, connection) => {
    if (err) {
        console.log("connection failed");
        return null;
    }
    // connection succssful

    // execute query
    try {
        connection.query(query, (err, result) => {
            if (err) {
                console.log(err);
            } else {
                console.log(result);
            }
        });
    } catch (err) {
        console.log(err);
    }
});
