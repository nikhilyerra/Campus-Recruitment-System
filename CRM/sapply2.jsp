

<%@ page  import="java.sql.*" import="databaseconnection.*" import="java.util.*,java.io.*,javax.swing.JOptionPane"%>



<%! String cemail, cid;
	int i=0;

	
%>
<%


String sid =(String)session.getAttribute("sid");
	String semail =(String)session.getAttribute("semail");
Random rand = new Random();

int  n = rand.nextInt(10000);


String s="JOB00";
String jid=s+n;
System.out.println("SID="+sid);

cemail=request.getParameter("cemail");

cid=request.getParameter("cid");
//String file=request.getParameter("file");


//System.out.println(pwd);
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();

/*
String path="D:\\Apache Tomcat 8.0\\webapps\\CRM\\file\\"+file;
  System.out.println("path"+path);

                File f = new File(path);
				FileInputStream fis = new FileInputStream(f);*/


               PreparedStatement pstmt = con.prepareStatement("insert into apply values(?,?,?,?,?,?)");
                pstmt.setString(1, jid);
                pstmt.setString(2, cid);
               pstmt.setString(3,cemail);
				pstmt.setString(4,sid);
				pstmt.setString(5,semail);
				
           //     pstmt.setBinaryStream(6, (InputStream) fis, (int) (f.length()));
				
				pstmt.setString(6,"waiting");
 
                int count = pstmt.executeUpdate();
                if (count > 0) {

	response.sendRedirect("sapply.jsp?ud=sucess");
	
}
else
	response.sendRedirect("sapply.jsp?udf=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
