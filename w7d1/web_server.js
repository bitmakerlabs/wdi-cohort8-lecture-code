var http = require('http');

http.createServer(function(req, res){
  console.log(req.headers);
  res.writeHead(200, {'Content-Type': 'text/plain'});
  res.end('Hello World\n');
}).listen(1337, '127.0.0.1');

console.log('Server is running at http://127.0.0.1:1337');