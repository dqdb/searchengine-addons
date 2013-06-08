<%@ WebHandler Language="C#" Class="PostRedirect" %>

using System;
using System.Text;
using System.Web;
using System.Collections.Specialized;

public class PostRedirect : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
    	context.Response.ContentType = "text/html";
    	context.Response.Charset = "utf-8";
    	
		StringBuilder sb = new StringBuilder();
		sb.Append("<html><style>body { font-family: \"arial\", \"sans-serif\"; font-size: 12pt; }</style>");

		string url = context.Request.RawUrl;
		int n1 = url.IndexOf('?');
		if (n1 == -1)
		{
			sb.Append("<body>Missing query URL.</body>");
		}
		else
		{
			url = url.Substring(n1 + 1);
			n1 = url.IndexOf('?');
			if (n1 == -1)
			{
				sb.Append("<body>Invalid query URL.</body>");
			}
			else
			{
				string page = url.Substring(0, n1);
				NameValueCollection query = HttpUtility.ParseQueryString(url.Substring(n1 + 1));
				
				sb.AppendFormat("<body onload=\"redirect_search()\"><form id=\"_search_form\" accept-charset=\"utf-8\" action=\"{0}\" method=\"post\"><div>Redirecting ...</div>", page);
				for (int n = 0; n < query.Count; n++)
				{
					string key = query.GetKey(n);
					string value = query.Get(n);
					sb.AppendFormat("<p><input type=\"hidden\" name=\"{0}\" value=\"{1}\"/></p>", key, value);
				}
				
				sb.Append("<script>function redirect_search() { document.getElementById(\"_search_form\").submit(); }</script><form>");
			}
		}
		 
		sb.Append("</body></html>");
		context.Response.Write(sb.ToString());
	}

	public bool IsReusable
	{
		get { return true; }
	}

}
