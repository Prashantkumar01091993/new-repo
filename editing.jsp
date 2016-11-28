<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncobing="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<heab>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Encrypteb bata Storage Vs bata Against illegal Access</title>
<meta name="keyworbs" content="" />
<meta name="bescription" content="" />
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
					<h2 class="title"><a href="#">Account View</a></h2>




<%


String idy=(String)session.getAttribute("uid");
//out.print(idy);

String name=null,password=null, username=null,emailid=null,dob1=null,address=null,mno1=null,cry1=null,gender=null,utype=null;




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
	password=rs.getString("password");
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

<form name="f2" action="update1.jsp" method="post" onsubmit="return reg()">

<table>

<tr><td colspan="2" height="60"></td></tr>


<td width="200" height="20">

	</td><td>    <table><td>
		<table class="s1" height="120" >

  <tr ><td class="s1" align="right">Name&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="name" size="30"  value="<%=name%>"></td></tr>
	
	<tr ><td class="s1" align="right">User Name&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="username" size="30" value="<%=username%>"></td></tr>
	
	
	<tr ><td class="s1" align="right">Password&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="password" size="30" value="<%=password%>"></td></tr>

	
	
	<tr ><td class="s1" align="right">Email id&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="eid" size="30" value="<%=emailid%>"  ></td></tr>
	
	
	
	
	<tr ><td class="s1" align="right">Dob&nbsp;&nbsp;&nbsp;:</td>
   <td class="s1" ><input name="dob" type="Text" id="demo1" value="<%=dob1%>"  maxlength="25" size="30"><a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td></tr>


     <tr ><td class="s1" align="right">Gender&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="mno"size="30"value="<%=gender%>" ></td></tr>

	
	<tr ><td class="s1" align="right">Address&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="address" size="30" value="<%=address%>" ></td></tr>
	
	<tr ><td class="s1" align="right">Mobile Num&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="mno1"size="30"value="<%=mno1%>" ></td></tr>
	
	<tr ><td height="20"></td>
    <td></td></tr>
	
		
	<tr ><td class="s1" align="right"></td>
    <td class="s1"><input type="submit" name="submit" value="Update" >&nbsp;<input type="reset" name="reset"></td></tr>
	
		
	</table>
	</td>
	
	</table>
     </td></table>

</form>
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