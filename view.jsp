<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
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
	alert ("Enter a name");
	document.f2.username.focus();
	return false;
	}
	
	
	var b=document.f2.password.value;
	
	if(b=="")
	{
	alert ("Enter user name");
	document.f2.password.focus();
	return false;
	}
	}
	
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
					<li><a href="index.html">Logout&nbsp;</a></li>
					<li><a href="userfront.jsp">Back</a></li>
				</ul>
			</div>
		</div>
		<!-- end #header -->
		<div id="page">
			<div id="content">
				<div class="post">
				<FONT SIZE="4" FACE="courier" COLOR=blue><MARQUEE WIDTH=100% BEHAVIOR=SCROLL HSPACE=15 VSPACE=25 >www.chennaisunday.com</MARQUEE></FONT>
					<h2 class="title"><a href="#">Account View</a></h2>




<%


String idy=(String)session.getAttribute("uid");
//out.print(idy);

String name=null,username=null,emailid=null,dob1=null,address=null,mno1=null,cry1=null,gender=null,utype=null;



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/clustering", "root", "admin");
PreparedStatement ps=conn.prepareStatement("select * from regstration where userid='"+idy+"'");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
name=rs.getString("name");
//out.print(name);
username=rs.getString("username");
//out.print(username);
emailid=rs.getString("emailid");
//out.print(emailid);
dob1=rs.getString("dob");
//out.print(dob1);
address=rs.getString("address");
//out.print(address);
mno1=rs.getString("mno");
//out.print(mno1);
gender=rs.getString("gender");
//out.print(gender);



}

}

 catch(Exception e)
        {
            out.println(e.getMessage());
        }
       


%>


<table>

<tr><td colspan="2" height="60"></td></tr>


<td width="200" height="20">

	</td><td>    <table class="s1" height="120">
	<tr>
  
  <tr ><td class="s1" align="right">User Id&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="id" size="30" value="<%=idy %>" disabled ></td></tr>
  

  <tr ><td class="s1" align="right">Name&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="name" size="30" disabled  value="<%=name%>"></td></tr>
	
	<tr ><td class="s1" align="right">User Name&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="username" size="30" disabled value="<%=username%>"></td></tr>
	
	<tr ><td class="s1" align="right">Email id&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="eid" size="30" disabled value="<%=emailid%>"  ></td></tr>
		
	<tr ><td class="s1" align="right">Dob&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1" ><input type="text" name="dob" size="30" disabled value="<%=dob1%>"  >
	
	<tr ><td class="s1" align="right">Address&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="address" size="30" disabled value="<%=address%>" ></td></tr>
	
	<tr ><td class="s1" align="right">Mobile Num&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="mno"size="30" disabled value="<%=mno1%>" ></td></tr>
	
	<tr ><td class="s1" align="right">Gender&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="gen" size="30" disabled value="<%=gender%>" ></td></tr>
	
	
	</table>           
	</td></table>


</div>
				
			</div>
			<!-- end #content -->
			<div id="sidebar">
				<ul>
					<!--<li id="search">
						<h3>Search</h3>
						<form id="searchform" method="get" action="">
							
							
							
							
						</form>
					</li>-->
					<li>
						<!--<h3>Veroeros etiam</h3>
						<p><strong>Morbi sit amet</strong> mauris Nam vitae nibh eu sapien dictum pharetra. Vestibulum elementum neque vel lacus. Proin auctor dolor loremmassa. Phasellus sit. <a href="#">More&hellip;</a></p>
					</li>
					<li>
						<h3>Blandit Volutpat</h3>-->
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
	<!-- end #wrapper2
	<div id="footer">
		<p>(c) 2007 Website Name. Design by <a href="http://www.nodethirtythree.com/">NodeThirtyThree</a> + <a href="http://www.freecsstemplates.org/">Free CSS Templates</a></p>
	</div> -->
</div>
<!-- end #wrapper 
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div>
-->

</body>
</html>

