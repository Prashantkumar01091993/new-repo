<%@ page  import="java.sql.*,databaseconnection.*"%>
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
<li><a href="userfront.jsp">Home</a></li>
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
<table width="500"  align="left" >
<tr>
<td align="center" colspan="3"><font color="#6633CC" size="+1">&nbsp;</font></td>
</tr>


<%

String ttt=(String)session.getAttribute("ttt");

String search2=request.getParameter("username");

session.setAttribute("search2",search2);

//String ttt=(String)session.getAttribute("ttt");


String se = search2.toLowerCase();
String [] sa=se.split(" ");
for(int a=0;a<sa.length;a++)
{
session.setAttribute("sss",sa[a]);

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clustering","root","admin");
PreparedStatement ps=conn.prepareStatement("select * from files where c like '"+'%'+sa[a]+'%'+ "' group by subkey having count(*) >= 1 ");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
String fname=rs.getString("subkey");
session.setAttribute("fname",fname);
//String fn=rs.getString("filename");
String fid=rs.getString("fileid");

%>
<tr align="left"><td colspan="4" width="20"></td></tr>
<tr align="center">
<td align="left"></td>
<td align="left"></td>
<td align="right"><font color="#FFFFFF" size="+0.5"><a href="userfront111.jsp?<%=fname%>"><%=fname%></a></font></td>
<td align="left"><%=sa[a]%></td>
</tr>

<tr align="center"><td colspan="4" width="20"></td></tr>

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
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clustering","root","admin");
PreparedStatement ps=conn.prepareStatement("select * from files where subkey like '"+'%'+sa[a]+'%'+ "' group by filekey having count(*) >= 1 ");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
String fname=rs.getString("filekey");
//String fn=rs.getString("filename");
String fid=rs.getString("fileid");

%>
<tr align="center"><td colspan="4" width="20"></td></tr>
<tr align="center">
<td align="left"></td>
<td align="left"></font></td>
<td align="right"><font color="#FFFFFF" size="+0.5"><a href="userfront111.jsp?<%=fname%>"><%=fname%></a></font></td>
<td align="left"><%=sa[a]%></td>
</tr>

<tr align="center"><td colspan="4" width="20"></td></tr>

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
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clustering","root","admin");
PreparedStatement ps=conn.prepareStatement("select * from files where filekey like '"+'%'+sa[a]+'%'+ "' group by filename having count(*)");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
String fname=rs.getString("filename");
String fid=rs.getString("fileid");

%>
<tr align="center"><td colspan="4" width="20"></td></tr>
<tr align="center">
<td width="70" align="left"></td>
<td align="left"><img src="f1.jsp?<%=fid%>" height="60" width="70"></td>
<td align="left"><font color="#FFFFFF" size="+0.5"><font color="#CC3333"><%=fname%></font></td>
<td align="left"><font color="#FFFFFF" size="+0.5"><a href="update.jsp?<%=fid%>">Click To Getdetails</a></font></td>
</tr>
<tr align="center"><td colspan="4" width="20"></td></tr>
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
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clustering","root","admin");
PreparedStatement ps=conn.prepareStatement("select * from files where filename like '"+'%'+sa[a]+'%'+ "' group by filename having count(*)");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
String fname=rs.getString("filename");
//String fn=rs.getString("filename");
String fid=rs.getString("fileid");
%>
<tr align="center"><td colspan="4" width="20"></td></tr>
<tr align="center">
<td width="70" align="center"></td>
<td align="left"><img src="f1.jsp?<%=fid%>" height="60" width="70"></td>
<td align="center"><font color="#CC3333" size="+0.5"><%=fname%></font></td>
<td align="right"><font color="#FFFFFF" size="+0.5"><a href="update.jsp?<%=fid%>">Click To Getdetails</a></font></td>
</tr>
<tr align="center"><td colspan="4" width="20"></td></tr>

<%
}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}
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
int timee=ttt1-tt1;
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

