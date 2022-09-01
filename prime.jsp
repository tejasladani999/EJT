<%!
	public void primeNumber(JspWriter out,int a) throws Exception
	{
		int n=a;
		int d=2;
		while(d<n)
		{
			if(n%d==0)
			{
				out.println("<br> "+n+" is not a prime nnumber.");
				break;
			}
			else
			{
				d++;
			}
			if(n==d)
			{
				out.println("<br>"+n+" is a prime number.");
			}
		}
	}
%>
<%
	int n=Integer.parseInt(request.getParameter("txtfactNo"));
	primeNumber(out,n);
%>