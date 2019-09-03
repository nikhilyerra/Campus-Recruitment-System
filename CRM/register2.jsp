<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*" import="java.util.*,javax.swing.JOptionPane"%>



<%! String name, lname, addr, city, state, country, zip, tele, email, un, pwd;
	int i=0;
%>
<%

Random rand = new Random();

int  n = rand.nextInt(10000);


String s="CMP00";
String sid=s+n;
System.out.println("CID="+sid);

name=request.getParameter("name");

addr=request.getParameter("addr");
city=request.getParameter("city");
state=request.getParameter("state");
country=request.getParameter("country");
 zip=request.getParameter("zip");
tele=request.getParameter("tel");
 email=request.getParameter("email");
pwd=request.getParameter("pwd");

//System.out.println(pwd);
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();

ResultSet rs=st2.executeQuery("select * from cregister where cemail='"+email+"' ");
if(rs.next())
	{
response.sendRedirect("cregister.jsp?reg=exist");
}
else{

int q= st.executeUpdate("insert into cregister values('"+sid+"','"+name+"','"+addr+"','"+city+"','"+state+"','"+country+"','"+zip+"','"+tele+"','"+email+"','"+pwd+"','wait')");

if(q>0)
{
	response.sendRedirect("cregister.jsp?id=sucess");

}
else
	response.sendRedirect("cregister.jsp?message=fail");
}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
