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
	var a = document.f2.file.value;
	if(a=="")
	{
	alert ("Select Required File");
	document.f2.file.focus();
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
					<h2 class="title"><a href="#">Admin Front</a></h2>
					
					<%
					String filename=(String)session.getAttribute("name");
                    String fileid=(String)session.getAttribute("id");
                    String filekey=(String)session.getAttribute("key");
                    String filesubkey=(String)session.getAttribute("subkey");
					
										
					%>
					
					
					
					
					
					
					
				
<table class="s1" height="120">
<tr>
<td width="100"></td>
<td>
					
<table height="120"  >
					<tr><td width="350"></td><td>
					

  <tr ><td class="s1" align="right">File Name&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input type="text" name="username" value="<%=filename%>" ></td></tr>
	
	
	<tr><td height="10" ></td>
    <td></td></tr>
	
	
	<tr ><td class="s1" align="right">File ID&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input name="fileid" value="<%=fileid%>" ></td></tr>
	
	 
	
	<tr><td height="10" ></td>
    <td></td></tr>

     <tr ><td class="s1" align="right">File KEY&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input type="filekey" name="filekey" value="<%=filekey%>" ></td></tr>
    
	<tr><td height="10" ></td>
    <td></td></tr>
	
	<tr ><td class="s1" align="right">File SUBKEY&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
    <td class="s1"><input type="filesubkey" name="filesubkey" value="<%=filesubkey%>" ></td></tr>
    
	<tr><td height="10" ></td>
    <td></td></tr>
	

	<form name="f2" action="fileinsert1.jsp" ENCTYPE="multipart/form-data" method="post" onsubmit="return reg()">
	

     <tr> 
          <td class="s1" align="right">Upload File &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</td>
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
