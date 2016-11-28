<%@ page import="java.sql.*,databaseconnection.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

</head>

<body>
<% 
String n1=request.getParameter("name");
//out.print(n1);
String un1=request.getParameter("username");
//out.print(un1);
String e1=request.getParameter("password");
//out.print(e1);
String emailid=request.getParameter("eid");
//out.print(emailid);
String add1=request.getParameter("dob");
//out.print(add1);
String gender=request.getParameter("mno");
//out.print(mno1);
String address=request.getParameter("address");
//out.print(cy);
String mno=request.getParameter("mno1");
//out.print(g);
String idy=(String)session.getAttribute("uid");
Connection conn3=null;
PreparedStatement pstmt1=null;

try
{
conn3=databasecon.getconnection();
pstmt1 = conn3.prepareStatement ("update regstration set name='"+n1+"',username='"+un1+"',emailid='"+emailid+"',password='"+e1+"',dob='"+add1+"',address='"+address+"',mno='"+mno+"',gender='"+gender+"' where userid='"+idy+"'");
int x=pstmt1.executeUpdate();
response.sendRedirect("userfront.jsp");
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>
</body>
</html>
