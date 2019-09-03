<%@include file="theader.jsp"%>
<%@page import="java.sql.*,java.util.*,java.text.*"%>
<%@page import="databaseconnection.*"%>
<html>
<body>
<br><br><br>
<div>




	<table align="center" width="900" cellpadding="5">
<tr align="center">
<th align="center"><h3><font color="orange">Company id</th>
<th align="center"><h3><font color="orange">Name</th>
<th align="center"><h3><font color="orange">Email</h3></th>
<th align="center"><h3><font color="orange">Phone No</h3></th>
<th align="center"><h3><font color="orange">Delete</h3></th>
</tr>	


 <%
				  if(request.getParameter("req")!=null)
				  {
					  out.println("<script>alert('Sucessfully Deleted..!')</script>");
				  }
%>

<br>

<%

try
{
	
ResultSet rs=null;

Connection con = databasecon.getconnection();

	Statement st=con.createStatement();
rs=st.executeQuery(" select * from cregister where cstatus='approve' ");

while(rs.next())
	{

%>

<tr align="center">
<td align="center"><p style="(255,0,255);"><font size="4"><%=rs.getString(1)%></font></p></td>
<td align="center"><p style="(255,0,255);"><font size="4"><%=rs.getString(2)%></font></p></td>
<td align="center"><p style="(255,0,255);"><font size="4"><%=rs.getString(9)%></font></p></td>
<td><p style="(255,0,255);"><font size="4"><%=rs.getString(8)%></font></p></td>

<td align="center"><p style="(255,0,255);"><font size="4"><a href="admincom1.jsp?aid=<%=rs.getString(1)%>&&email=<%=rs.getString(9)%>">Delete</a></font></p></td>


</tr>


<%}%>





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