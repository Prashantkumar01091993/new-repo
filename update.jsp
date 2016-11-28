<%@ page  import="java.sql.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
String empid=request.getQueryString();
session.setAttribute("empid1",empid);
//int empid=3445;
try
{
Class.forName("com.mysql.jdbc.Driver");	
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/clustering","root","admin");
PreparedStatement ps1=con1.prepareStatement("select active from files where fileid='"+empid+"'");
ResultSet rs1=ps1.executeQuery();
while (rs1.next())
{
String name=rs1.getString("active");
int pr1=Integer.parseInt(name);
int quantity1=1;
int sum = pr1+quantity1;
String sum1=Integer.toString(sum);
out.print(sum1);







//session.setAttribute("cash1",sum1);










try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clustering", "root", "admin");
PreparedStatement ps=conn.prepareStatement("update files set active='"+sum1+"' where fileid='"+empid+"'");
ps.executeUpdate();
response.sendRedirect("odownload.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</body>
</html>
