const { createPool } = require("mysql");

const pool = createPool({
    host: "localhost",
    user: "root",
    password: "dummy",
    // database: "quotationTool",
    database: "record_company",
    connectionLimit: 10,
})

module.exports.getDataFromSQL = async function(){
    console.log("Step 1");
    return new Promise((resolve, reject) => {
        pool.query(`select * from albums`, (error, result, fields) => {
            console.log("Step 2");
            if (error) {
                console.log("Error -> ", error);
                reject(error);
            }
            console.log("Step 3");
            console.log("Result's Length -> ", result.length)
            console.log("Step 4");
            resolve(result);
            console.log("Step 5");
        })
    });
    console.log("Step 6"); // This will be executed before the query is finished
}

// SELECT VERSION()  
// SELECT host, user, plugin FROM mysql.user WHERE user = 'root';

// ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'dummy';
