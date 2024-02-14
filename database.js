const { createPool } = require("mysql");

const pool = createPool({
    host: "localhost",
    user: "root",
    password: "dummy",
    // database: "quotationTool",
    database: "record_company",
    connectionLimit: 10,
})

pool.query(`select * from albums`, (error, result, fields) => {
    console.log("Fields -> ", fields);
    // console.log("Pool -> ", pool);
    if(error){
        return console.log("Error -> ", error);
    }
    for(el of result){
        console.log("NAME -> ", el.name);
    }
    
})
// To check on which version our sql workbench is running
// SELECT VERSION()  

// To check for the host, user and plugin for the Sql client connection 
// SELECT host, user, plugin FROM mysql.user WHERE user = 'root';

// To alter the password of the user
// ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'dummy';
