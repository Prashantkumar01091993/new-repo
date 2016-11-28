<%@ page  import="java.sql.*,databaseconnection.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Encrypted Data Storage Vs Data Against illegal Access</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />


<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery.jcarousel.pack.js"></script>
<script type="text/javascript" src="scripts/jquery.jcarousel.setup.js"></script>

<link rev="made" href="mailto:contact@rainforestnet.com">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="generator" content="NoteTab Light 4.9">
  <meta name="author" content="TengYong Ng">
  <meta name="description" content="">
  <meta name="keywords" content="">
   <script language="javascript" type="text/javascript" src="datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com 

</script>

<script type="text/javascript">
	function reg()
	{
	var a = document.f2.name.value;
	if(a=="")
	{
	alert ("Enter a name");
	document.f2.name.focus();
	return false;
	}
	
	if(!isNaN(a))
	{
	alert ("Enter a alphat");
	document.form1.name.select();
	return false;
	}
	
	var b=document.f2.username.value;
	
	if(b=="")
	{
	alert ("Enter user name");
	document.f2.username.focus();
	return false;
	}
	
	var z=document.f2.eid.value;
	if(z=="")
	{
	alert ("enter a mail id");
	document.f2.eid.focus();
	return false;
	}
	
	
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
	var c=emailfilter.test(document.f2.eid.value);
	if(c==false)
	{
	alert(" Enter valid Mail ID");
	document.f2.eid.select();
	return false;
	}
	
	var d=document.f2.pwd.value;
	if(d=="")
	{
	alert ("Enter a password");
	document.f2.pwd.focus();
	return false;
	}
	
	var e=document.f2.conpwd.value;
	if(e=="")
	{
	alert ("enter confirm password");
	document.f2.conpwd.focus();
	return false;
	}
	if(d!=e)
	{
	alert ("Enter correct password");
	document.f2.conpwd.select();
	return false;
	}
	
	var f=document.f2.dob.value;
	if(f=="")
	{
	alert ("Pick date");
	document.f2.dob.focus();
	return false;
	}
	
	var g=document.f2.address.value;
	if(g=="")
	{
	alert ("Enter address");
	document.f2.address.focus();
	return false;
	}
	
	var h=document.f2.mno.value;
	if(h=="")
	{
	alert ("Enter mobile number");
	document.f2.mno.focus();
	return false;
	}
	if(h.length!=10)
	{
	alert ("Enter valid mobile number");
	document.f2.mno.focus();
	return false;
	}
	var i=document.f2.cry.value;
	if(i=="")
	{
	alert ("Enter country");
	document.f2.cry.focus();
	return false;
	}
	
	if ( ( f2.gender[0].checked == false ) && ( f2.gender[1].checked == false ) )
	{
	alert ( "Please choose your Gender: Male or Female" );
	return false;
	}

	
	}
	
</script>
</head>
<body>
<%
Connection con1=null;
Statement st=null;
ResultSet rs=null;

int id=0;
try
{
con1=databasecon.getconnection();
st=con1.createStatement();
rs=st.executeQuery("select max(userid) from regstration");
while(rs.next())
{
if(rs.getInt(1)==0)
id=1;
else
id=rs.getInt(1)+1;
}

session.setAttribute("id",id);

}

 catch(Exception e)
        {
            out.println(e.getMessage());
        }
       


%>
<div id="wrapper">
	<div id="wrapper2">
	
	<table>
			<tr>
			<td align="center"><font size="+3">&nbsp;A Fast Clustering-Based Feature Subset Selection  Algorithm  for High Dimensional Data</font></td>
			
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
		<!-- end #header -->
		<div id="page">
			<div id="content">
				<div class="post">
				<FONT SIZE="4" FACE="courier" COLOR=blue><MARQUEE WIDTH=100% BEHAVIOR=SCROLL HSPACE=15 VSPACE=25 >www.chennaisunday.com</MARQUEE></FONT>
					<h2 class="title"><a href="#">Registration Page</a></h2>
<form name="f2" action="insert.jsp" method="post" onsubmit="return reg()">
					
<table height="80">

<tr><td width="250"></td><td>
					

  <table class="s1" height="100" >
  

  <tr ><td class="s1" align="right">Name&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="name" ></td></tr>
	<tr ><td height="10"></td>
    </tr>
	
	<tr ><td class="s1" align="right">User Name&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="username" ></td></tr>
	<tr ><td height="10"></td>
    </tr>
	<tr ><td class="s1" align="right">Email id&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="eid" ></td></tr>
	
	<tr ><td height="10"></td>
    </tr>
	
	<tr ><td class="s1" align="right">Password&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="password" name="pwd" ></td></tr>
	
	<tr ><td height="10"></td>
    </tr>
	
	<tr ><td class="s1" align="right">Confirm Password&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="password" name="conpwd" ></td></tr>
	
	<tr ><td height="10"></td>
    </tr>
	
	<tr ><td class="s1" align="right">Dob&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1" ><input name="dob" type="Text" id="demo1" maxlength="25" size="20"><a href="javascript:NewCal('demo1','ddmmmyyyy',true,24)"><img src="cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
	  		<span class="descriptions"></span></td></tr>
			
			<tr ><td height="10"></td>
    </tr>
	
	<tr ><td class="s1" align="right">Address&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="address" ></td></tr>
	
	<tr ><td height="10"></td>
    </tr>
	
	<tr ><td class="s1" align="right">Mobile Num&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="text" name="mno" ></td></tr>
	
	<tr ><td height="10"></td>
    </tr>
	
	
	<tr ><td class="s1" align="right">Gender&nbsp;&nbsp;&nbsp;:</td>
    <td class="s1"><input type="radio"  name="gender" value="Male" >Male &nbsp;<input type="radio"  name="gender" value="Fe-Male" >Fe-Male</td></tr>
		
		<tr ><td height="10"></td>
    </tr>
	
	<tr><td class="s1" align="right" >UserType&nbsp;&nbsp;&nbsp;:</td>
    
    <td class="s1"><select name="utype"><option value="0">--Select--</option><option value="admin">ADMIN</option><option value="user">USER</option></select></td></tr>
	
		<tr ><td height="10"></td>
    </tr>
	
	<tr ><td class="s1" align="right"></td>
    <td class="s1"><input type="submit" name="submit" value="SUBMIT" >&nbsp;<input type="reset" name="reset"></td></tr>
	
	
		
	 
  </table>
 </td> </tr>
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
