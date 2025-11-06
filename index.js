const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
  res.send('<html><body><h1>Welcome to your MCA Project!</h1><p>CI/CD Pipeline v1.0 is working!</p></body></html>');
});

app.listen(PORT, () => {
  console.log(`App listening on port ${PORT}`);
});