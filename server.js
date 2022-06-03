'use strict';

const express = require('express');

// Constants
const PORT = process.env.PORT || 3000;
const HOST = 'localhost';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('Hello From group 4');
});

app.listen(PORT);
console.log(`Running on http://${HOST}:${PORT}`);