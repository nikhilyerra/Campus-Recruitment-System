<%@include file="uheader.jsp"%>
<%@page import="java.sql.*,java.util.*,java.text.*,Mail.*"%>
<%@page import="databaseconnection.*"%>
<html>
<head>
<title></title>

</head>

<body>
<%
String tdname=null,tdmno=null;

String aid= request.getParameter("aid");
String email=request.getParameter("email");

try
{


ResultSet rs3=null;
Connection con=databasecon.getconnection();
	Statement st=con.createStatement();

 ResultSet rs=st.executeQuery("select * from cregister  where cid='"+aid+"' and cemail='"+email+"' ");
if(rs.next())
	{
%>
<div align="center">
<table>
<tr><th align="left" style="width: 250px;" ><font size="6" color="orange" >Company Name</th><td><b><font size="5" color="yellow"><%=rs.getString(2)%></td></tr>



<tr><th align="left" style="width: 250px;" ><font size="6" color="orange">Company Address</th><td><b><font size="5" color="yellow"> <%=rs.getString(3)%></td></tr>

<tr><th align="left" style="width: 250px;" ><font size="6" color="orange">District</th><td><b><font size="5" color="yellow"><%=rs.getString(4)%></td></tr>

<tr><th align="left" style="width: 250px;" ><font size="6" color="orange">State</th><td><b><font size="5" color="yellow"><%=rs.getString(5)%></td></tr>



<tr><th align="left" style="width: 250px;" ><font size="6" color="orange">Country</th><td><b><font size="5" color="yellow"><%=rs.getString(6)%></td></tr>

<tr><th align="left" style="width: 250px;" ><font size="6" color="orange">Email</th><td><b><font size="5" color="yellow"><%=rs.getString(9)%></td></tr>



</table>

</div>
<%
	}

}

catch(Exception e1)
{
out.println(e1.getMessage());
}


%>
</body>
</html>


<%@ include file="footer.jsp"%>