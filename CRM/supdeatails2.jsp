<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*" import="java.util.*,javax.swing.JOptionPane"%>



<%! String ssc, inter, g, pg,achieve;
	int i=0;
%>
<%

String sid =(String)session.getAttribute("sid");
	String semail =(String)session.getAttribute("semail");
	String sname =(String)session.getAttribute("sname");



ssc=request.getParameter("ssc");

inter=request.getParameter("inter");
g=request.getParameter("g");
pg=request.getParameter("pg");
 achieve=request.getParameter("achieve");

//System.out.println(pwd);
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();

Statement st2=con.createStatement();


int q= st.executeUpdate("update sdetails set ssc='"+ssc+"',inter='"+inter+"',graduation='"+g+"',pg='"+pg+"',archieve='"+achieve+"' where sid='"+sid+"' and semail='"+semail+"' ");

if(q>0)
{
	response.sendRedirect("supdetails.jsp?idm=sucess");
	
}
else{
	response.sendRedirect("supdetails.jsp?message=fail");
}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
