// const express = require("express");
// const { getDataFromSQL } = require("./database");

// const app = express();


// app.get("/", async(req, res) => {
//     try {
//         console.log("Api Hitted");
//         const data = await getDataFromSQL();
//         console.log("Data -> ", data);
//         res.status(200).json({
//             status: "success",
//             message: "HOME",
//             data: data,
//         });
//     } catch (error) {
//         console.log("Error -> ", error);
//         res.status(401).json(error);
//     }
// });

// app.listen(8080, () => {
//   console.log("Listening to the port : ", 8080);
// });

// =======================================================================

const express = require("express");
const { createPool } = require("mysql");

const app = express();

const pool = createPool({
    host: "localhost",
    user: "root",
    password: "dummy",
    database: "record_company",
    connectionLimit: 10,
});

app.get("/", async (req, res) => {
    try {
        console.log("Api Hitted");
        const data = await getDataFromSQL(pool);
        console.log("Data -> ", data);
        res.status(200).json({
            status: "success",
            message: "HOME",
            data: data,
        });
    } catch (error) {
        console.log("Error -> ", error);
        res.status(401).json(error);
    }
});

async function getDataFromSQL(pool) {
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

app.listen(8080, () => {
    console.log("Listening to the port : ", 8080);
});
