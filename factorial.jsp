<%!
	public void factorial1(JspWriter out,int a) throws Exception
	{
		int num=a;
		int fact = 1;
		for(int i=1; i<=num; i++)
		{
			fact=i*fact;
		}
		out.println("The factorial of  " +num+"  is : " +fact);
	}
%>
<%
  int n=Integer.parseInt(request.getParameter("txtfactNo"));
  factorial1(out,n);
%>