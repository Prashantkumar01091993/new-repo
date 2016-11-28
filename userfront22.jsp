<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Encrypted Data Storage Vs Data Against illegal Access</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen"/>
</head>
<body>
<div id="wrapper">
<div id="wrapper2">
<table>
<tr>
<td align="center"><font size="+3">&nbsp;A Fast Clustering-Based Feature Subset Selection  Algorithm  for High Dimensional Data
</font></td>
</tr>
</table>
	
<div id="header">
<div id="logo">
<h1>Clustering</h1>
</div>
<div id="menu">
<ul>
<li><a href="index.html">Home</a></li>
<li><a href="login.jsp">Login</a></li>
<li><a href="admin.jsp">Admin</a></li>
<li><a href="index.html">Logout&nbsp;</a></li>
</ul>
</div>
</div>
<div id="page">
<div id="content">
<div class="post">
<FONT SIZE="4" FACE="courier" COLOR=blue><MARQUEE WIDTH=100% BEHAVIOR=SCROLL HSPACE=15 VSPACE=25 >www.chennaisunday.com</MARQUEE></FONT>
<h2 class="title"><a href="#">Searching Domain Results</a></h2>					
<form name="f2" action="userfront1.jsp" method="post" onsubmit="return reg()">
<table width="600" align="center">
<%
String name1=request.getQueryString();
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clustering","root","admin");
PreparedStatement ps=conn.prepareStatement("select * from files where filekey like '"+'%'+name1+'%'+ "' ORDER BY active ");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
String fname=rs.getString("filekey");
String fn=rs.getString("filename");
String fid=rs.getString("fileid");

%>
<tr align="center">
<td align="center"><img src="f1.jsp?<%=fid%>" height="45" width="60"></td>
<td align="center"><font color="#FFFFFF" size="+0.5"><a href="update.jsp?<%=fid%>">Download</a></font></td>
<td align="center"><font color="#FFFFFF" size="+0.5"><a href="update.jsp?<%=fid%>"><%=fname%></a></font></td>
</tr>
<%

}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clustering","root","admin");
PreparedStatement ps1=con.prepareStatement("select * from files where subkey like '"+'%'+name1+'%'+ "' ORDER BY active  ");
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{
String fname1=rs1.getString("filename");
String fkey=rs1.getString("filekey");
String fid1=rs1.getString("fileid");
%>
<tr align="center" >
<td align="center"><img src="f1.jsp?<%=fid1%>" height="45" width="60"></td>
<td align="center"><font color="#FFFFFF" size="+0.5"><a href="update.jsp?<%=fid1%>">Download</a></font></td>
<td align="center"><font color="#FFFFFF" size="+0.5"><a href="update.jsp?<%=fid1%>"><%=fkey%></a></font></td>
</tr>
<%
}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clustering","root","admin");
PreparedStatement ps1=con.prepareStatement("select * from files where filename like '"+'%'+name1+'%'+ "' ORDER BY active  ");

//SELECT * FROM `student` ORDER BY mark desc

ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{
String fname2=rs1.getString("filename");
String fkeyy=rs1.getString("filekey");
String fid2=rs1.getString("fileid");
%>
<tr align="center">
<td align="center"><img src="f1.jsp?<%=fid2%>" height="45" width="60"></td>
<td align="center"><font color="#FFFFFF" size="+0.5"><a href="update.jsp?<%=fid2%>">Download</a></font></td>
<td align="center"><font color="#FFFFFF" size="+0.5"><a href="update.jsp?<%=fid2%>"><%=fkeyy%></a></font></td>
</tr>

<%
}
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
      
%>
</table>
</form> 


<%
java.text.DateFormat df = new java.text.SimpleDateFormat("ys"); 
String tt=df.format(new java.util.Date());
session.setAttribute("tt",tt);
int ttt1=Integer.parseInt(ttt);
int tt1=Integer.parseInt(tt);
int timee=tt1-ttt1;
%>
<table width="500"  align="right" >
<tr><td height="20" align="center"></td></tr>

<tr><td align="center">The searching Time Taken was (0.000000000000<%=timee%>) sec...</td></tr>
</table>









</li>
<li>
<ul>
</ul>
</li>
</ul>
</div>
<div style="clear: both;">&nbsp;</div>
<div id="widebar">
<div style="clear: both;">&nbsp;</div>
</div>
</div>
</div>
</div>
</body>
</html>

