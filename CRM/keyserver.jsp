<%@ include file="header.jsp"%>
<br>

<font size="" color=""><h1></h1></font>

<b>

           <div class="form_settings">
<form method="post" action="tlogin.jsp">
<table align=right cellspacing=20 ><tr><td>
<tr><td><h2><font size="" color="#33ffff">Admin Login..
	<tr><td><input type="text" name="uid" required placeholder="Username" style="width: 250px;">
		<tr><td><input type="password" name="pwd" required placeholder="Password" style="width: 250px;">

			<tr><td>		  <div class="form_settings"><input class="submit" type="submit"  value="Login" /></div><td>

</tr>
</table>

					<table align=right cellspacing=20 ><tr><td><td>
	                  <%
                                                       String m=request.getParameter("m");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>

</form></div>
											   <br><br><br><br><br><br><br><br><br><br><br><br><br>

											   
											   <br><br><br><br><br>



<%@ include file="footer.jsp"%>