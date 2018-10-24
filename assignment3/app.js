const http = require('http');
const os = require('os');

console.log("Node.js Server starting...");
console.log(process.env)
var ipCount = 0;

var handler = function(request, response) {
  console.log("Received request from " + request.connection.remoteAddress);
  response.writeHead(200);
  ipCount += 1;
  response.end("\nYou've hit the port " + os.hostname() + "\n"+ JSON.stringify(process.env)+ "\n"+"Count is: "+ ipCount);
};
var www = http.createServer(handler);
www.listen(8080);