<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*" import="java.util.*,javax.swing.JOptionPane"%>



<%! String ssc, inter, g, pg,achieve,file;
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
file=request.getParameter("file");

//System.out.println(pwd);
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();

Statement st2=con.createStatement();


int q= st.executeUpdate("insert into sdetails values('"+sid+"','"+sname+"','"+semail+"','"+ssc+"','"+inter+"','"+g+"','"+pg+"','"+achieve+"','"+file+"','waiting')");

if(q>0)
{
	response.sendRedirect("supdetails.jsp?id=suce");
	
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
