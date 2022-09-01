<%!
	public void plndrm(JspWriter out,int a) throws Exception
	{
		int num=a;
		int reversedNum = 0, remainder;
		int originalNum = num;
		while (num != 0)
		{
			remainder = num % 10;
			reversedNum = reversedNum * 10 + remainder;
			num /= 10;
		}
		if (originalNum == reversedNum)
		{
			out.println(originalNum + " is Palindrome.");
		}
		else
		{
			out.println(originalNum + " is not Palindrome.");
		}
	}
%>
<%
	int num=Integer.parseInt(request.getParameter("txtfactNo"));
	plndrm(out,num);
%>