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
String cemail=(String)session.getAttribute("cemail");
String cname=(String)session.getAttribute("cname");
String cid=(String)session.getAttribute("cid");
String jid= request.getParameter("jid");
String semail=request.getParameter("semail");

try
{



Connection con=databasecon.getconnection();
	Statement st=con.createStatement();Statement st2=con.createStatement();
ResultSet rs=st2.executeQuery("select * from apply  where jid='"+jid+"' and semail='"+semail+"' and fstatus='selected' ");

if(rs.next())
	{
response.sendRedirect("cstuview.jsp?yv=exist&&semail="+semail);

}
else{
 int y=st.executeUpdate("update apply set fstatus='selected',cid='"+cid+"' where jid='"+jid+"' and semail='"+semail+"' ");
if(y!=0)
	{


String msg="you are selected in "+cname+"\n"+ "come with original documents to attend interview";

mail.mailsend(msg,semail);

response.sendRedirect("cstudetails.jsp?y=succ");
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


<%@ include file="footer.jsp"%>