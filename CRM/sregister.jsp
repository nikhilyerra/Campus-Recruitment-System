<%@ include file="header.jsp"%>
<script language="javascript"> 
function checkPassword() { 
    if (document.reg.pwd.value != document.reg.pwd2.value) { 
        alert ('The passwords do not match!');
        return false; 
    } 
} 
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;

}
function enableRegisterButton()
{
	if(document.getElementById("name").value != "" && document.getElementById("lname").value != "" && document.getElementById("addr").value != "" && document.getElementById("city").value != "" && document.getElementById("state").value != "" && document.getElementById("zip").value != "" && document.getElementById("email").value != "" && document.getElementById("pwd").value != "" && document.getElementById("pwd2").value != "")
	{ 
		 
		document.getElementById("register").disabled = false;
	
	}
	else
	{
		
		document.getElementById("register").disabled = true;
	
	}
}
function validate(email) {

            var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
            //var address = document.getElementById[email].value;
            if (reg.test(email) == false) 
            {
                alert('Invalid Email Address');
                return (false);
            }
 }

</script>
</head>
<body>
<!--
This is a free CSS template provided by templatemo.com
-->

			   <center>
			   <table>
                
    
              <tr> 
                <td colspan="2" align="center"><font size="2"><b> 
                  <%



				  if(request.getParameter("reg")!=null)
				  {
				  out.println("<script>alert('The Email is Already Registered')</script>");
				  }

				   if(request.getParameter("message")!=null)
				  {
				  out.println("<script>alert('The Registration is  Failed ')</script>");
				  }
                                                       String id=request.getParameter("id");
                                                       if(id!=null )
                                                       {
                                                               out.println("<script>alert('Registration Success... !')</script> ");
                                                       }
													   else {%>
												
                                               <%}%>
                  </b></font></td>
              </tr>
 </table> 
 </center>
 <div  align="center">
           <div class="form_settings">
<h2>Register Here</h3></h2><br><br>
 <form name="reg" action="register1.jsp" method="get"   name="pwForm" >

 
             <table cellspacing="10">
              <tr> 
                <td>
                <input type="text" name="name" id = "name" onblur = "enableRegisterButton();" style="width: 350px;" required placeholder="Name">
              </tr>

			 
			
			  <tr> 
                <td>
<br>
				<input type="text" name="addr" id = "addr" onblur = "enableRegisterButton();" style="width: 350px;"	required  placeholder="Address">
              </tr>

<tr> 
                <td><br>
                <input type="text" name="city" id = "name" onblur = "enableRegisterButton();" style="width: 350px;" required placeholder="District">
              </tr>



			  <tr> 
                <td><br>
                <input type="text" name="state" id = "name" onblur = "enableRegisterButton();" style="width: 350px;" required placeholder="State">
              </tr>




              <tr> 
            
			

			 <tr>
			<td>	<br>
			<input type="text" pattern="[0-9]{6,6}"  maxlength="6" id="zip"  onblur = "enableRegisterButton();" onkeypress = "return isNumber(this.value);" name="zip" style="width: 350px;"	 required placeholder="ZIP">
			  <tr> 
                <td><br>
				<input type="text"  name="tel" pattern="[0-9]{10,10}" maxlength="10" style="width: 350px;"	onkeypress = "return isNumber(this.value);"  placeholder="Contact No">
				<tr><td>

<br>
				<input type="email" name="email" id="email" onblur = "return validate(this.value);enableRegisterButton();" style="width: 350px;"	 required placeholder="Email">
              </tr>





								 			  <tr> 
                <td><br>
				<input type="password" name="pwd" id="pwd" onblur = "enableRegisterButton();" style="width: 350px;" required	 placeholder="Password">

				<tr>				<td>

<br>
			  <tr> 
                <td><div class="form_settings">
				<input class="submit" type="submit" Value="Register"></div>
				
				
              </tr>
               </table>

 
 </form>
</div></div>
 
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
       <%@ include file="footer.jsp"%>