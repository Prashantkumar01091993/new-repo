<%@ page  import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>

<%
String keyt=request.getQueryString();

session.setAttribute("keyt",keyt);

out.print(keyt);




try
{

Connection conn=databasecon.getconnection();
PreparedStatement ps=conn.prepareStatement("truncate table temp");

ps.executeUpdate();
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

response.sendRedirect("nextlink.jsp");




%>










</body>
</html>
