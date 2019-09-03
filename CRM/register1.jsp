<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*" import="java.util.*,javax.swing.JOptionPane"%>



<%! String name, lname, addr, city, state, zip, tele, email, un, pwd;
	int i=0;
%>
<%

Random rand = new Random();

int  n = rand.nextInt(10000);


String s="STU00";
String sid=s+n;
System.out.println("SID="+sid);

name=request.getParameter("name");

addr=request.getParameter("addr");
city=request.getParameter("city");
state=request.getParameter("state");
 zip=request.getParameter("zip");
tele=request.getParameter("tel");
 email=request.getParameter("email");
pwd=request.getParameter("pwd");

//System.out.println(pwd);
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();

Statement st2=con.createStatement();

ResultSet rs=st2.executeQuery("select * from sregister where semail='"+email+"' ");
if(rs.next())
	{
response.sendRedirect("sregister.jsp?reg=exist");
}
else{
int q= st.executeUpdate("insert into sregister values('"+sid+"','"+name+"','"+addr+"','"+city+"','"+state+"','"+zip+"','"+tele+"','"+email+"','"+pwd+"','wait')");

if(q>0)
{
	response.sendRedirect("sregister.jsp?id=sucess");
	
}}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
