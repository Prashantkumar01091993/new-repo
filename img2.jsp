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
	var a = document.f2.name.value;
	if(a=="")
	{
	alert ("Enter a file name");
	document.f2.name.focus();
	return false;
	}
	
	
	var b=document.f2.key.value;
	
	if(b=="")
	{
	alert ("Enter Correct File Key");
	document.f2.key.focus();
	return false;
	}
	
	var c=document.f2.subkey.value;
	
	if(c=="")
	{
	alert ("Enter Correct File SubKey");
	document.f2.subkey.focus();
	return false;
	}
	if(c=="")
	{
	alert ("Enter Common file name");
	document.f2.subkey.focus();
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
<li><a href="adminfront.jsp">TextUploads</a></li>
<li><a href="img1.jsp">UploadImage</a></li>
<li><a href="admin.jsp">Admin</a></li>
<li><a href="index.html">Logout&nbsp;</a></li>
</ul>
</div>
</div>
<div id="page">
<div id="content">
<div class="post">
<FONT SIZE="4" FACE="courier" COLOR=blue><MARQUEE WIDTH=100% BEHAVIOR=SCROLL HSPACE=15 VSPACE=25 >www.chennaisunday.com</MARQUEE></FONT>
<h2 class="title"><a href="#">Image Upload</a></h2>

<%

String name1=(String)session.getAttribute("name1");

String username1=(String)session.getAttribute("username1");

String fileImg=(String)session.getAttribute("fileImg");


String behaviour=(String)session.getAttribute("behaviour");

%>




					
<table class="s1" height="120">
<tr>
<td width="100"></td>
<td>
					
<table height="120"  >
					<tr><td width="250"></td><td>
					

  <tr ><td class="s1" align="right">Image Name&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input type="text" name="name" value="<%=name1%>"></td></tr>
	
	
	
	
	
	
	
	<tr><td height="10" ></td>
    <td></td></tr>
	
	
	<tr ><td class="s1" align="right">About Image&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input type="text" value="<%=behaviour%>"></td></tr>
	
	
	
	
	
	
	<tr><td height="10" ></td>
    <td></td></tr>
	
	
	<tr ><td class="s1" align="right">Category&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input name="category" type="text" value="<%=username1%>" ></td></tr>
	
	
	
	<tr><td height="10" ></td>
    <td></td></tr>

     <tr ><td class="s1" align="right">File ID&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input name="id" value="<%=fileImg%>" ></td></tr>
	
	
	
	
	<tr><td height="10" ></td>
    <td></td></tr>
	
	
	
	<form name="f2" action="img3.jsp" ENCTYPE="multipart/form-data" method="post" onsubmit="return reg()">
	

     <tr> 
                <td class="s1" align="right">Upload 
                  Image&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
                <td><input type="file" name="file" class="b"></td>
              </tr>
			  <tr><td height="10" ></td>
    <td></td></tr>
	
	
	
	<tr> 
                <td></td>
                <td><input type="submit" name="s" value="submit" class="b1" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="reset" name="r" value="clear" class="b1"></td>
              </tr>
	</form>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
		
	
	
	
	
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
