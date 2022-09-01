<%!
	public void diamond1(JspWriter out,int x) throws Exception
	{
		int n=x;
		int i, j, space = 1;
		space = n - 1;
		for (j = 1; j <= n; j++) 
		{
			for (i = 1; i <= space; i++) 
			{
				out.print("&nbsp;&nbsp;");
			}
		space--;
			for (i = 1; i <= 2 * j - 1; i++) 
			{
				out.print("*");                
			}
			out.println("</br>");
		}
		space = 1;
		for (j = 1; j <= n - 1; j++) 
		{
			for (i = 1; i <= space; i++) 
			{
				out.print("&nbsp;&nbsp;");
			}
			space++;
			for (i = 1; i <= 2 * (n - j) - 1; i++) 
			{
				out.print("*");
			}
			out.print("</br>");
		}
	}
%>
<%
    int a=Integer.parseInt(request.getParameter("txtfactNo"));
	diamond1(out,a);
%>