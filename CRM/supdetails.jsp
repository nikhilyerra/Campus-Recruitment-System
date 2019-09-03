<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="java.util.*,javax.swing.JOptionPane"%>





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



				   if(request.getParameter("message")!=null)
				  {
				  out.println("<script>alert('Upload Details is  Failed ')</script>");
				  }
                                                      
                                                       if(request.getParameter("id")!=null )
                                                       {
                                                               out.println("<script>alert('Upload Details Successfully')</script> ");
                                                       }
                                                              if(request.getParameter("idm")!=null )
                                                       {
                                                               out.println("<script>alert('Modify Details Successfully Uploaded')</script> ");
                                                       }

													   %>
													 
                  </b></font></td>
              </tr>
 </table> 
 </center>




<%

String sid =(String)session.getAttribute("sid");
	String semail =(String)session.getAttribute("semail");



try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from sdetails where sid='"+sid+"' and semail='"+semail+"' ");
if(rs.next())
	{
%>





 <div  align="center">
           <div class="form_settings">
<h2>Upload Details</h3></h2><br><br>
 <form name="reg" action="supdeatails2.jsp" method="get"   name="pwForm" >

 
             <table cellspacing="10">
              <tr> <th align="left">SSC</th>
                <td>
                <input type="text" name="ssc" id = "name" onblur = "enableRegisterButton();" style="width: 350px;" required value="<%=rs.getString(4)%>">
              </tr>

			 
			
			  <tr> 
			  <th align="left">Inter</th>
                <td>
<br>
				<input type="text" name="inter" id = "addr" onblur = "enableRegisterButton();" style="width: 350px;"	required  value="<%=rs.getString(5)%>">
              </tr>

<tr> <th align="left">Graduation</th>
                <td><br>
                <input type="text" name="g" id = "name" onblur = "enableRegisterButton();" style="width: 350px;" required value="<%=rs.getString(6)%>">
              </tr>



			  <tr> <th align="left">Post Graduation</th>
                <td><br>
                <input type="text" name="pg" id = "name" onblur = "enableRegisterButton();" style="width: 350px;" required value="<%=rs.getString(7)%>">
              </tr>




              
            
			

			 <tr><th align="left">Achievements</th>
			<td>	<br>
			<input type="text" id = "name"  onblur = "enableRegisterButton();" onkeypress = "return isNumber(this.value);" name="achieve" style="width: 350px;"	value="<%=rs.getString(8)%>">
			  </tr> 
                
				
<br>
			  <tr> 
                <td><div class="form_settings">
				<input class="submit" type="submit" Value="Modify"></div>
				
				
              </tr>
               </table>

 
 </form>
</div></div>
 
 <%}
 
 else
	{%>

<div  align="center">
           <div class="form_settings">
<h2>Upload Details</h3></h2><br><br>
 <form name="reg" action="supdeatails1.jsp" method="get"   name="pwForm" >

 
             <table cellspacing="10">
              <tr> <th align="left">SSC</th>
                <td>
                <input type="text" name="ssc" id = "name" onblur = "enableRegisterButton();" style="width: 350px;" required placeholder="Persentage">
              </tr>

			 
			
			  <tr> 
			  <th align="left">Inter</th>
                <td>
<br>
				<input type="text" name="inter" id = "addr" onblur = "enableRegisterButton();" style="width: 350px;"	required  placeholder="Persentage">
              </tr>

<tr> <th align="left">Graduation</th>
                <td><br>
                <input type="text" name="g" id = "name" onblur = "enableRegisterButton();" style="width: 350px;" required placeholder="Persentage">
              </tr>



			  <tr> <th align="left">Post Graduation</th>
                <td><br>
                <input type="text" name="pg" id = "name" onblur = "enableRegisterButton();" style="width: 350px;" required placeholder="Persentage">
              </tr>




  
			

			 <tr><th align="left">Achievements</th>
			<td>	<br>
			<input type="text" id = "name"  onblur = "enableRegisterButton();" name="achieve" style="width: 350px;"	placeholder="any Achivements Or Not?">
			  </tr> 
                <tr><th align="left">File</th>
			<td>	<br>
			<input type="file" id = "name"  onblur = "enableRegisterButton();" name="file" style="width: 350px;"	placeholder="any Achivements Or Not?">
			  </tr>
				
<br>
			  <tr> 
                <td><div class="form_settings">
				<input class="submit" type="submit" Value="Upload"></div>
				
				
              </tr>
               </table>

 
 </form>
</div></div>




<%
	}
}
catch(Exception e)
{
e.printStackTrace();
}



%>





<br><br><br><br>
<!-- ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc -->
       <%@ include file="footer.jsp"%>