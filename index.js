'use strict';

const express = require('express');

// templating engine 'EJS'
app.set("view engine", "ejs")
app.set("views", path.join(__dirname, "views"))




// Constants
const PORT = process.env.PORT;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.render('home');
});

app.get('/info', (req, res) => {
  res.send(JSON.stringify([1, 2, 3]));
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);