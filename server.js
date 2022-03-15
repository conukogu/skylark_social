const express = require('express');
const cors = require('cors');
const mysql = require('mysql');

const app = express();

//connecting to the database and checking for errors if any are present

const db = mysql.createConnection({
    host: 'localhost',
    user:'root',
    password: 'conukogu1',
    database: 'skylark_demo'
});

db.connect(err => {
    if(err) {
        return err
    }else {
        console.log("db connection succesful")
    }
})

app.use(cors());
app.use(express.json());

app.get('/users', (req, res) => {
    db.query('SELECT* FROM users', (err, result) => {
        if (err) {
            console.log(err)
        } else {
            res.send (result);
        }
    })
})


app.listen(4000, () => {
    console.log(`console server listening on port 4000`)
})