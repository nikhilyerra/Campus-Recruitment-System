
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

int rs=st.executeUpdate("delete from sregister  where sid='"+aid+"' and semail='"+email+"' ");
if(rs!=0)
	{

response.sendRedirect("adminstu.jsp?req=success");

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