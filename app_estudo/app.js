const express = require('express');
const app = express();
const port = 3100;

app.get('/', (req, res) => {
  res.send('Hello World - Curso Porto NodeJS');
});

app.get('/health-check', (req, res) => {
  res.send('UP');
});

app.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`);
});