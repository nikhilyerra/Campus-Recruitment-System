<%@include file="uheader.jsp"%>
<%@page import="java.sql.*,java.util.*,java.text.*,Mail.*"%>
<%@page import="databaseconnection.*"%>
<html>
<head>
<br><br><br>
<title></title>

</head>

<body>
<%
String tdname=null,tdmno=null;

String aid= request.getParameter("aid");
String email=request.getParameter("email");
String semail =(String)session.getAttribute("semail");
try
{


ResultSet rs=null;
Connection con=databasecon.getconnection();
	Statement st=con.createStatement();Statement st3=con.createStatement();

ResultSet rs3=st3.executeQuery("select * from apply  where  cemail='"+email+"' and semail='"+semail+"' ");
if(rs3.next())
	{
response.sendRedirect("sapply.jsp?abc=exist");
	}
	else{
rs=st.executeQuery("select * from cregister  where cid='"+aid+"' and cemail='"+email+"' ");
if(rs.next())
	{

	response.sendRedirect("sapply2.jsp?cemail="+email);
%>
<div align="center">
<h1 align="left" style="width: 250px;" ><font color="orange">Upload Resume</h1>

<form method="post" action="sapply2.jsp">

<table>

<tr>  <input type="hidden" name="cemail" value="<%=email%>"></tr>
<tr>  <input type="hidden" name="cid" value="<%=aid%>"></tr>
<br>
<!--tr><td align="right"><input type="file" name="file" style="width: 250px;"></td>

<br>

<tr><td align="center">		  <div class="form_settings"><input class="submit" type="submit"  value="Upload" /></div><td-->



</table>
	
</form>
</div>
<%
	}
	}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}


%>
</body>
</html>
<br><br><br><br>

<%@ include file="footer.jsp"%>