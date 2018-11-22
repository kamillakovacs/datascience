"use strict"; 

const express = require('express');
const app = express();
const PORT = 3000;
const path = require('path');
const cors = require('cors');
const mysql = require('mysql')
const bodyParser = require('body-parser');

// const webdriver = require("selenium-webdriver");
// const By = require("selenium-webdriver");
// const chrome = require("selenium-webdriver/chrome").SeleniumServer;
// const browser = new webdriver.Builder().withCapabilities(webdriver.Capabilities.chrome()).build();

// browser.get("https://www.fcc.gov/ecfs/search/filings?date_received=%5Bgte%5D2018-01-01%5Blte%5D2018-11-15&limit=100&q=(proceedings.name:((17%5C-108*))%20OR%20proceedings.description:((17%5C-108*)))&sort=date_disseminated,DESC");

app.use('/assets', express.static('assets'));
app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended : false }));

const conn = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'HowNice',
  database: 'openinternet',
  port: '33061'
});

conn.connect((err) => {
  if (err) {
    console.log(err);
    return;
  }
  console.log(`Connection to Db established`);
});

app.get('/', function(request, response) {
  response.sendFile(path.join(__dirname, 'index.html'));
});

app.get('/filings', (req, res) => {
  conn.query(`SELECT * FROM filings`, (err, filings) => {
    if (err) {
      res.status(500).json({
        error: 'Unexpected error while fetching filings',
    })
    } else {
      res.status(200).json({
        filings: filings,
      })
    }
  })
})

app.listen(PORT, () => {
  console.log(`App is up and running on port ${PORT}`);
});

