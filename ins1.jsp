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

session.setAttribute("name1",name1);

//out.print(name1);

String behaviour=request.getParameter("behaviour");

session.setAttribute("behaviour",behaviour);
//out.print(username1);



String username1=request.getParameter("category");

session.setAttribute("username1",username1);
//out.print(username1);
String fileImg=request.getParameter("id");

session.setAttribute("fileImg",fileImg);

//out.print(fileImg);




Connection conn=null;
PreparedStatement ps=null;

try
{
//Class.forName("com.mysql.jdbc.Driver");
//conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clustering","root", "admin");
conn=databasecon.getconnection();
ps=conn.prepareStatement ("insert into images (keyword,category,img,behaviour) values (?,?,?,?)");


ps.setString(1,name1);
ps.setString(2,username1);
ps.setString(3,fileImg);
ps.setString(4,behaviour);


int x=ps.executeUpdate();

            
               
                response.sendRedirect("img2.jsp");
               
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
  
   
%>

</body>
</html>
