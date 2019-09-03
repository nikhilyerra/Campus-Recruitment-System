
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

ResultSet rs2=null;
ResultSet rs3=null;
Connection con=databasecon.getconnection();
	Statement st=con.createStatement();

int rs=st.executeUpdate("update cregister set cstatus='approve' where cid='"+aid+"' and cemail='"+email+"' ");
if(rs!=0)
	{

response.sendRedirect("arequests2.jsp?req=success");

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