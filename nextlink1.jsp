﻿<%@ page  import="java.sql.*,databaseconnection.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Encrypted Data Storage Vs Data Against illegal Access</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen"/>
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="scripts/jquery.jcarousel.setup.js"></script>
<script language="javascript" type="text/javascript" src="datetimepicker.js"></script>

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
<li><a href="adminfront.jsp">TextUploads</a></li>
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
</div>

<%

//String ttt=(String)session.getAttribute("ttt");




String name=null,password=null, username=null,emailid=null,dob1=null,address=null,mno1=null,cry1=null,gender=null,utype=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clustering", "root", "admin");
PreparedStatement ps=conn.prepareStatement("select * from temp group by imgid having count(*) >= 1");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
name=rs.getString("imgid");
//out.print(name);

%>




<a href="nextlink2.jsp?<%=rs.getString("imgid")%>"><input type="image" src="f2.jsp?<%=rs.getString("imgid")%>" height="150" width="200"></a>

<%



}

}

 catch(Exception e)
        {
            out.println(e.getMessage());
        }
       









/*
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clustering","root","admin");
PreparedStatement ps=conn.prepareStatement("select * from temp GROUP BY imgid HAVING   COUNT(*) = 1 ");
ResultSet rs=ps.executeQuery();
while(rs.next())
{

String m1=rs.getString("imgid");
out.print(m1);






}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}


*/


%>










<div style="clear: both;">&nbsp;</div>
<div id="widebar">
<div style="clear: both;">&nbsp;</div>
</div>
</div>
</div>
</div>
</body>
</html>