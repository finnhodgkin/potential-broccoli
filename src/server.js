const http = require('http');
const handler = require('./handler.js');

const server = http.createServer(handler);
const port = process.env.PORT || 3000;

server.listen(port, () => {
  console.log(`The magic happens at http://localhost:${port}`);
});
