<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Encrypted Data Storage Vs Data Against illegal Access</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript">
	function reg()
	{
	var a = document.f2.username.value;
	if(a=="")
	{
	alert ("Enter for Search");
	document.f2.username.focus();
	return false;
	}
	}
	
</script>
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="scripts/jquery.jcarousel.setup.js"></script>
<script language="javascript" type="text/javascript" src="datetimepicker.js">
//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com 
</script>
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
					<li><a href="editing.jsp">Account Editing</a></li>
					<li><a href="view.jsp">Account View</a></li>
					<li><a href="index.html">Logout&nbsp;</a></li>
				</ul>
			</div>
		</div>
		<!-- end #header -->
		<div id="page">
			<div id="content">
				<div class="post">
				<FONT SIZE="4" FACE="courier" COLOR=blue><MARQUEE WIDTH=100% BEHAVIOR=SCROLL HSPACE=15 VSPACE=25 >www.chennaisunday.com</MARQUEE></FONT>
					<h2 class="title"><a href="#">Search</a></h2>
<form name="f2" action="userfront11.jsp" method="post" onsubmit="return reg()">
	<%
		  
java.text.DateFormat df1 = new java.text.SimpleDateFormat("ys"); 
String ttt=df1.format(new java.util.Date());
session.setAttribute("ttt",ttt);
		
		
		
		String sss=(String)session.getAttribute("uid");  
		  session.setAttribute("sss",sss);
		  
		  %>
<table height="200" width="650">
<tr><td>WebSearch</td><td>&nbsp;&nbsp;&nbsp;<a href="image.jsp">Image</a></td><td>&nbsp;&nbsp;&nbsp;<a href="image.jsp">News</a></td><td>&nbsp;&nbsp;&nbsp;<a href="sports.jsp">Sports</a></td></tr>
<tr><td colspan="3" width="350"></td><td>
<table width="550">

<tr>			
<td align="center"><img src="images/search1.gif" alt="" width="420" height="138" /></td>   <td></td>
</tr>

<tr>			
<td height="10"></td>   <td height="10"></td>
</tr>

<tr>
<td align="center">Search Here&nbsp;&nbsp;&nbsp;&nbsp;<input width="50" type="text" name="username" ></td>
</tr>

<tr>			
<td height="10"></td>   <td height="10"></td>
</tr>

<tr>
<td align="center" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input  type="submit" name="login" value="SEARCH" ></td>
</tr>
</table>


</td>
</tr>
</table>
</form> 
				</div>
				
			</div>
			<!-- end #content -->
			<div id="sidebar">
				<ul>
					<li>
						 <ul>
							
						</ul>
					</li>
				</ul>
			</div>
			<!-- end #sidebar -->
			<div style="clear: both;">&nbsp;</div>
			<div id="widebar">
				
				
				<div style="clear: both;">&nbsp;</div>
			</div>
			<!-- end #widebar -->
		</div>
		<!-- end #page -->
	</div>
	
</div>
</body>
</html>
