<%@include file="theader.jsp"%>
<%@page import="java.sql.*"%>
<%@page import="databaseconnection.*"%>
<%
    String uname = request.getParameter("uid").trim();
    String password = request.getParameter("pwd").trim();

	 try
	 {

        if(uname.equals("admin") && password.equals("admin"))
        {

		response.sendRedirect("adminhome.jsp");

		}
		else
			 {
				response.sendRedirect("admin.jsp?m1=fail");
			 }
	 }
    catch(Exception e)
    {
        System.out.println("Error in loginaction"+e.getMessage());
    }
%>