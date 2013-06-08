var port = 15001;

var http = require("http");
var querystring = require("querystring");
http.createServer(function(req, res)
{
	res.writeHead(200, {"Content-Type": "text/html;charset=\"utf-8\""});
	
	var s = "<html><style>body { font-family: \"arial\", \"sans-serif\"; font-size: 12pt; }</style>";
	var url = req.url;
	var n1 = url.indexOf('?');
	if (n1 == -1)
	{
		s += "<body>Missing query URL.</body>";
	}
	else
	{
		url = url.substr(n1 + 1);
		n1 = url.indexOf('?');
		if (n1 == -1)
		{
			s += "<body>Invalid query URL.</body>";
		}
		else
		{
			var page = url.substr(0, n1);

			s += "<body onload=\"redirect_search()\"><form id=\"_search_form\" action=\"" + page + "\" method=\"post\" accept-charset=\"utf-8\"><div>Redirecting ...</div>";
			var query = querystring.parse(url.substr(n1 + 1));
			
			for (var key in query)
			{
				var value = query[key].toString();
				s += "<p><input type=\"hidden\" name=\"" + key + "\" value=\"" + value + "\"/></p>";
			}
			
			s += "<script>function redirect_search() { document.getElementById(\"_search_form\").submit(); }</script><form>";
		}
	}
	
	s += "</body></html>";
	res.write(s);
	res.end();
}).listen(port, "127.0.0.1");

port = port == 80 ? "" : ":" + port;
console.log("Use \"http://localhost" + port + "/?\" as prefix URL");
