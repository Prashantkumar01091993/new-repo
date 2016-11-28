<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String name1=request.getParameter("name");
//out.print(name1);
String username1=request.getParameter("username");
//out.print(username1);
String emailid1=request.getParameter("eid");
//out.print(emailid1);
String password1=request.getParameter("pwd");
//out.print(password1);
String confirmpassword1=request.getParameter("conpwd");
//out.print(confirmpassword1);
String dob1=request.getParameter("dob");
//out.print(dob1);
String address1=request.getParameter("address");
//out.print(address1);
String mobilenum1=request.getParameter("mno");
//out.print(mobilenum1);
String gender1=request.getParameter("gender");
//out.print(gender1);
String utype=request.getParameter("utype");
//out.print(utype);




Connection conn=null;
PreparedStatement ps=null;

try
{
Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clustering","root", "admin");
//conn=databasecon.getconnection();
ps=conn.prepareStatement ("insert into regstration (name,username,emailid,password,cpassword,dob,address,mno,gender,utype) values (?,?,?,?,?,?,?,?,?,?)");


ps.setString(1,name1);
ps.setString(2,username1);
ps.setString(3,emailid1);
ps.setString(4,password1);
ps.setString(5,confirmpassword1);
ps.setString(6,dob1);
ps.setString(7,address1);
ps.setString(8,mobilenum1);
ps.setString(9,gender1);
ps.setString(10,utype);
int x=ps.executeUpdate();

            if(x==0)
                {
                response.sendRedirect("sucessreg.jsp");}
            else
                {
                response.sendRedirect("sucessreg.jsp");
                }
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
  
  

        
%>

</body>
</html>
