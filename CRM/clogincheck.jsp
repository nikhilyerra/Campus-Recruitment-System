<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String a = request.getParameter("uid");
String b= request.getParameter("pwd");
String cname=null,cemail=null,cid=null;
ResultSet rs1=null;
try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();Statement st2 = con1.createStatement();
ResultSet rs2=st2.executeQuery("select * from cregister where cemail='"+a+"' && cpwd='"+b+"' ");
if(rs2.next())
	{
System.out.println("ok");
 rs1=st1.executeQuery("select * from cregister where cemail='"+a+"' && cpwd='"+b+"' && cstatus='approve' ");
	if(rs1.next())
	{
		cid=rs1.getString("cid");
		cemail=rs1.getString("cemail");
		cname=rs1.getString("cname");

		session.setAttribute("cid",cid);
		session.setAttribute("cemail",cemail);
		session.setAttribute("cname",cname);

		response.sendRedirect("chome.jsp");
		}
		else{
		response.sendRedirect("clogin.jsp?admin=fail");}

	}
	else
	{
		response.sendRedirect("clogin.jsp?m=invalid");}
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>