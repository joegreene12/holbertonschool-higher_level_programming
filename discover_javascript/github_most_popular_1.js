var https = require('https');

var options = {
	hostname: 'api.github.com',
	path: 'https://api.github.com/search/repositories?q=language:javascript&sort=stars&order=desc',
	headers: {
		'User-Agent': 'Holberton_School',
		'Authorization': 'token 238f25e2cc39a2c46ef88993ce49bffbbda6d7f4'
	}
}

var req = https.request(options, function(res) {
	// console.log(res.statusCode);
	res.on('data', function(d) {
		process.stdout.write(d);
	});
});
req.end();
//console.log(req._headers);

req.on('error', function(e) {
	console.error(e);
});
