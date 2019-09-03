<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String a = request.getParameter("uid");
String b= request.getParameter("pwd");
String sname=null,semail=null,sid=null;
ResultSet rs1=null;
try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();Statement st2 = con1.createStatement();
ResultSet rs2=st2.executeQuery("select * from sregister where semail='"+a+"' && spwd='"+b+"' ");
if(rs2.next())
	{
System.out.println("ok");
 rs1=st1.executeQuery("select * from sregister where semail='"+a+"' && spwd='"+b+"' && sstatus='approve' ");
	if(rs1.next())
	{
		sid=rs1.getString("sid");
		semail=rs1.getString("semail");
		sname=rs1.getString("sname");

		session.setAttribute("sid",sid);
		session.setAttribute("semail",semail);
		session.setAttribute("sname",sname);

		response.sendRedirect("shome.jsp");
		}
		else{
		response.sendRedirect("slogin.jsp?admin=fail");}

	}
	else
	{
		response.sendRedirect("slogin.jsp?m=invalid");}
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>