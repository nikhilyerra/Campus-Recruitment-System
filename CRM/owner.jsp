<%@ include file="header.jsp"%>

<font size="+3" color="#6666ff" align="center"><h1>Login Page for Company</h1></font>
<b>

				<table  cellspacing=20 ><tr><td>
	                  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>
<b>

<div class="form_settings">
<form method="post" action="ologin.jsp">
	<table  align="right" cellpadding=20 ><tr><td>
<tr><td><h2><font size="" color="#33ffff">Company Login..
	<tr><td><input type="text" name="uid" required placeholder="Username"  style="width: 250px;">
		<tr><td><input type="password" name="pwd" required placeholder="Password" style="width: 250px;">

			<tr><td>		  <div class="form_settings"><input class="submit" type="submit"  value="Login" /><td>

</tr></div>
</table>											   <br><br><br><br><br>											   <br><br>

</form><br><br><br><br>


											   




<%@ include file="footer.jsp"%>