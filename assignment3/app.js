const http = require('http');
const os = require('os');
const redis = require('redis');

const REDISHOST = process.env.REDISHOST || 'localhost';
const REDISPORT = process.env.REDISPORT || 6379;

const client = redis.createClient(REDISPORT, REDISHOST);
client.on('error', (err) => console.error('ERR:REDIS:', err));
console.log("Server started....")
// create a server
http.createServer((req, res) => {
// increment the visit counter
  client.incr(os.hostname(), (err, reply) => {
    console.log(reply)
    if (err) {
      console.log(err);
      res.end(err);
      res.status(500).send(err.message);
      return;
    }
    client.set('my test key', 'my test value', redis.print);
    client.get('my test key', function(error, result) {
      if (error) throw error;
      console.log('GET result ->', result);
    });
    res.write(`IP hit count: ${reply}\n`);
    res.write("\nYou've hit the port " + os.hostname() + "\n"+ JSON.stringify(process.env));
    console.log(process.env)
  });
}).listen(process.env.HIT_PORT);




// console.log("Node.js Server starting...");
// console.log(process.env)
// var ipCount = 0;

// var handler = function(request, response) {
//   console.log("Received request from " + request.connection.remoteAddress);
//   response.writeHead(200);
//   ipCount += 1;
//   response.end("\nYou've hit the port " + os.hostname() + "\n"+ JSON.stringify(process.env)+ "\n"+"Count is: "+ ipCount);
// };
// var www = http.createServer(handler);
// www.listen(process.env.HIT_PORT);