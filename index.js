const express = require('express');
var app = express();
const port = process.env.PORT || 3000;

app.use(express.static('dist'));

app.listen(port);

console.log('localhost:3000');