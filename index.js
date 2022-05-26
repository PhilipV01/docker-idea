'use strict';

const express = require('express');

// Constants
const PORT = process.env.PORT;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello World');
});

app.get('/info', (req, res) => {
  res.send(JSON.stringify([1, 2, 3]));
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);