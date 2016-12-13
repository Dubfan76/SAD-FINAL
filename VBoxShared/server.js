var http       = require('http');
var mysql      = require('mysql');
var express    = require('express');
var bodyParser = require('body-parser');

// connect to mysql
var connection = mysql.createConnection({
   host     :   'localhost',
   user     :   'root',
   password :   'hawklet',
   database :   'sakila'
});

// try to connect
connection.connect();

// test the connection with this table-less query to the database engine
connection.query('SELECT 1 + 1 AS solution', function(err, rows, fields) {
 if (err) throw err;
 console.log('The solution is: ', rows[0].solution);
});

// fire up express
var app = express();

// serve a response on the home page, http://10.10.90.105:3000/ for example
app.get('/', function(req, res) {
   res.send('hello');
});

// get customer spend by filter on last name
app.get('/customers/spending/:letter', function(req, res) {
   var filter = req.params.letter + '%';
   var q = 
       'SELECT c.first_name, c.last_name, SUM(p.amount) AS "total_payments" ' +
       'FROM customer c ' +
       'JOIN payment p ON p.customer_id = c.customer_id ' +
       'WHERE c.last_name LIKE ? ' +
       'GROUP BY last_name ';
   connection.query(q, [filter], function(err, rows, fields) {
       if(err) throw err;
       else {
           console.log(rows);
           res.send(rows);
       }
   });
});

// start listening on port 3000
http.createServer(app).listen(3000);

console.log('http://localhost:3000/');


