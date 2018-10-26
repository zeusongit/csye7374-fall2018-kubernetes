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
    
    res.write("PORT NAME : " + os.hostname() + "\n");
    res.write("HIT COUNTER : " + reply + "\n");
    res.write("Env Variables:\n" + JSON.stringify(process.env));
    console.log(process.env)
  });
}).listen(process.env.HIT_PORT);