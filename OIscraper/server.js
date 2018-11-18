// "use strict"; 

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
  port: '3306'
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

// app.post('/filings', (req, res) => {
//   const table = browser.findElement(by.tagName("table"));
//   const filings = table.findElement(by.tagName("td"));
//   console.log('post has started')
//   filings.forEach(filing => {
//     let name = filing.find_element_by_class_name("col-md-8").text;
//     let shortComment = filing.find_element_by_class_name("col-md-12");
//     let filingBody = filing.find_element_by_tag_name("a");
//     let filingLink = filingBody.get_attribute("href");

//     conn.query(`INSERT INTO filings (name, comment, url) values ${name}, ${shortComment}, ${filingLink}`, (err, result) => {
//       if (err) {
//         console.log(`Database error SPECIFIC POST`);
//         res.status(500).send(err.message);
//         return;
//       } 
//       res.status(200).json({
//         result,
//     })
//   });
//   browser.quit();
//   })
// })

app.listen(PORT, () => {
  console.log(`App is up and running on port ${PORT}`);
});

// next steps
// pull data via server.js and selenium from website
// send data via json to and endpoint
// in script.js, send from endpoint to HTML

// create database openinternet; 
// create table if not exists filings (name varchar(30), comment varchar(100), url varchar(150), id int not null auto_increment primary key);

