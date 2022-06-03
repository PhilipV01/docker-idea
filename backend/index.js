const express = require('express');
const path = require('path');
const app = express();
const port = process.env.PORT || 3000;
const fs = require('fs');

let indexContent = fs.readFileSync(path.join(__dirname, '../dist', 'index.html'), 'utf-8')
  .replace(/"\//g, '"');

app.get('/', (req, res) => {
  res.send(indexContent);
});


app.use(express.static(path.join(__dirname, '../dist')));
app.listen(port, () => console.log('Listening on http://localhost:' + port));