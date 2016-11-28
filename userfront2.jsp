<%@ page  import="java.sql.*,databaseconnection.*"%>
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
<FONT SIZE="4" FACE="courier" COLOR=blue><MARQUEE WIDTH=100% BEHAVIOR=SCROLL HSPACE=15 VSPACE=25 >www.chennaisunday.com</MARQUEE></FONT>
<div id="content">
<div class="post">
<h2 class="title"><a href="#">Searching Domain Results</a></h2>					
<form name="f2" action="userfront1.jsp" method="post" onsubmit="return reg()">
<table width="500"  align="right" >
<tr>
<td align="center" colspan="3"><font color="#6633CC" size="+1">&nbsp;RESULTS>>>>>></font></td>
</tr>


<%


String search2=request.getQueryString();

out.print(search2);


String se = search2.toLowerCase();
//out.print(se);

//String [] sa=se.split(" ");


try
{

Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clustering","root", "admin");
PreparedStatement ps=conn.prepareStatement("select * from files where filename like '"+'%'+se+'%'+ "'");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
String fname=rs.getString("filename");
//out.print(fname);

String fkey=rs.getString("filekey");
//out.print(fkey);

String skey=rs.getString("subkey");
//out.print(skey);

String fid=rs.getString("fileid");
//out.print(fid);

%>
<tr align="center" >
<tr><td align="center"><font color="#FFFFFF" size="+1"><a href="userfront2.jsp?<%=fname%>"><%=fname%></a></font></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+0.5"><a href="userfront2.jsp?<%=fkey%>"><%=fkey%></a></font></td></tr>
<tr><td align="center"><font color="#FFFFFF" size="+0.5"><a href="userfront2.jsp?<%=skey%>"><%=skey%></a></font></td></tr>
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
