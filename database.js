const { createPool } = require("mysql");

const pool = createPool({
    host: "localhost",
    user: "root",
    password: "dummy",
    database: "quotationTool",
    // database: "record_company",
    connectionLimit: 10,
})

module.exports.getDataFromSQL = async function () {
    return new Promise((resolve, reject) => {
        // pool.query(`select name as 'Album Name', release_year as 'Release Date' from albums`, (error, result, fields) => {

        // pool.query(`INSERT INTO albums(id,name,release_year,band_id) VALUES (19,'Dummy',2039,1);`, (error, result, fields) => {

        // pool.query(`select * from albums`, (error, result, fields) => {

        // pool.query(`SELECT bands.name AS 'Band', COUNT(songs.id) AS 'No of Songs' FROM bands JOIN albums ON albums.band_id = bands.id JOIN songs ON songs.album_id = albums.id GROUP BY albums.band_id; `, (error, result, fields) => {

        // pool.query(`SELECT AVG(length) AS 'Average Song Duration' FROM songs`, (error, result, fields) => {

        // pool.query(`DELETE FROM albums WHERE id = 19;`, (error, result, fields) => {

        // pool.query(`SELECT bands.name AS 'Band Name' FROM bands JOIN albums ON bands.id = albums.band_id GROUP BY albums.band_id `, (error, result, fields) => {

        // pool.query(`SELECT bands.name AS 'Band Name' FROM bands JOIN albums ON bands.id = albums.band_id GROUP BY albums.band_id HAVING COUNT(albums.id) > 0`, (error, result, fields) => {
            
        pool.query(`SELECT albums.name AS 'Album', albums.release_year AS 'Release Year', 
        -- SUM(songs.length) AS Duration 
        MAX(songs.length) AS Duration 
        FROM albums JOIN songs ON songs.album_id = albums.id GROUP BY songs.album_id;`, 
        (error, result, fields) => {

            if (error) {
                console.log("Error -> ", error);
                reject(error);
            }
            console.log("Result's Length -> ", result.length)
            resolve(result);
        })
    });
}

// SELECT VERSION()  
// SELECT host, user, plugin FROM mysql.user WHERE user = 'root';

// ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'dummy';
