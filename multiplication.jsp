<%!
	public void table(JspWriter out,int a) throws Exception
	{
		int num=a;
		out.print("Table of "+num+" is :</br></br>");
		for(int i=1; i <= 10; i++)
		{  
			out.print(num+" * "+i+" = "+num*i+"</br>");
		}
	}
%>
<%
	int n=Integer.parseInt(request.getParameter("txtfactNo"));
	table(out,n);
%>