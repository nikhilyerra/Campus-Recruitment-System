<%@ include file="header.jsp"%>



	                  <%
				  if(request.getParameter("m")!=null)
				  {
					  out.println("<script>alert('login fail...! please check username and password')</script>");
				  }



if(request.getParameter("admin")!=null)
				  
				  {
					  out.println("<script>alert('login fail...! Admin cant approve your Request')</script>");
				  }
                                               %>


<br>

<font size="" color=""><h1></h1></font>

<b>

           <div class="form_settings">
<form method="post" action="slogincheck.jsp">
<table align=right cellspacing=20 ><tr><td>
<tr><td><h2><font size="" color="#33ffff">Student Login..
	<tr><td><input type="text" name="uid" required placeholder="Usermail" style="width: 250px;">
		<tr><td><input type="password" name="pwd" required placeholder="Password" style="width: 250px;">

			<tr><td>		  <div class="form_settings"><input class="submit" type="submit"  value="Login" /></div><td>
<br><br>
<tr><td>

<a href="sregister.jsp"><img src="images/reg1.png" style width=150px; height=50px>
</tr>
</table>



					<table align=right cellspacing=20 ><tr><td><td>
	                  <%
                                                       String m=request.getParameter("m1");
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