<%@include file="oheader.jsp"%>
<%@page import="java.sql.*,java.util.*,java.text.*"%>
<%@page import="databaseconnection.*"%>
<html>
<body>
<br><br><br>
<div>




	<table align="center" width="900" cellpadding="5">
<tr align="center">
<th align="center"><h3><font color="orange">Student id</th>
<th align="center"><h3><font color="orange">Email</h3></th>
<th align="center"><h3><font color="orange">Resume</h3></th>
<th align="center"><h3><font color="orange">Selected</h3></th>
</tr>	


 <%
				  if(request.getParameter("y")!=null)
				  {
					  out.println("<script>alert('Selected Sucessfully and Sent Email')</script>");
				  }

				   if(request.getParameter("yv")!=null)
				  {
					  out.println("<script>alert('Already selected')</script>");
				  }
%>

<br>

<%


String cid =(String)session.getAttribute("cid");
	String cemail =(String)session.getAttribute("cemail");
	String semail =request.getParameter("semail");
	//String sid =request.getParameter("aid");
	System.out.println("company mail="+cemail);
try
{

	
ResultSet rs=null;ResultSet rs2=null;

Connection con = databasecon.getconnection();

	Statement st=con.createStatement();Statement st2=con.createStatement();
rs2=st2.executeQuery(" select * from apply where cemail='"+cemail+"' and semail='"+semail+"' ");
System.out.println(" select * from apply where cemail='"+cemail+"' and semail='"+semail+"' ");
if(rs2.next())
	{
rs=st.executeQuery(" select * from sdetails where semail='"+semail+"' ");
if(rs.next())
	{

%>

<tr align="center">
<td align="center"><p style="(255,0,255);"><font size="4"><%=rs.getString(1)%></font></p></td>
<td align="center"><p style="(255,0,255);"><font size="4"><%=rs.getString(3)%></font></p></td>
<td align="center"><p style="(255,0,255);"><font size="4"><a href="file/<%=rs.getString(9)%>"target="_blank" >resume</font></p></td>

<td align="center"><p style="(255,0,255);"><font size="4"><a href="cstuview1.jsp?jid=<%=rs2.getString(1)%>&&semail=<%=rs.getString(3)%>">select</a></font></p></td>


</tr>


<%}}

else{
response.sendRedirect("cstudetails.jsp?abc=no");
}

%>





</table>
</form>

<%
}

catch(Exception e1)
{
out.println(e1.getMessage());
}


%>
<div>
</body>
</html>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>