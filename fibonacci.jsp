<%!
	public void fibb(JspWriter out,int a) throws Exception
	{
		int n=a;
		int firstTerm = 0, secondTerm = 1;
		out.println("Fibonacci Series till " + n + " terms:");
		for (int i = 1; i <= n; ++i)
		{
			out.print(firstTerm + ", ");
			int nextTerm = firstTerm + secondTerm;
			firstTerm = secondTerm;
			secondTerm = nextTerm;
		}
	}
%>
<%
	int n=Integer.parseInt(request.getParameter("txtfactNo"));
	fibb(out,n);
%>