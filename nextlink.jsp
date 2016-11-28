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

String keyt=(String)session.getAttribute("keyt");


out.print(keyt);
Connection con=null;

try
{
con=databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("select * from images where img='"+keyt+"'   ");
ResultSet rs=ps.executeQuery();
while(rs.next())
{


String s1=rs.getString("behaviour");
out.print("This is s1="+s1);
String s2=rs.getString("category");
out.print("This is s2="+s2);
String s3=rs.getString("keyword");
out.print("This is s3="+s3);




//String mahe="mahe";

String imgid=null;
try
{
con=databasecon.getconnection();
PreparedStatement ps1=con.prepareStatement("select * from images where category='"+s1+"'  ");
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{

imgid=rs1.getString("img");


out.print("---------------- ");
out.print(imgid);

//out.print("Hai ");


Connection conns=null;
PreparedStatement pss=null;

try
{
con=databasecon.getconnection();
//conn=databasecon.getconnection();
pss=con.prepareStatement ("insert into temp (imgid) values (?)");


pss.setString(1,imgid);

int x=pss.executeUpdate();

            
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
 




}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}




String imgid1=null;

try
{
con=databasecon.getconnection();

PreparedStatement ps2=con.prepareStatement("select * from images where  keyword='"+s1+"'  ");
ResultSet rs2=ps2.executeQuery();
while(rs2.next())
{

 imgid1=rs2.getString("img");


//out.print(imgid1);
Connection conns=null;
PreparedStatement pss=null;

try
{
con=databasecon.getconnection();

//conn=databasecon.getconnection();
pss=con.prepareStatement ("insert into temp (imgid) values (?)");


pss.setString(1,imgid);

int x=pss.executeUpdate();

            
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
 




}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}



try
{
con=databasecon.getconnection();
PreparedStatement ps1=con.prepareStatement("select * from images where  behaviour='"+s1+"' ");
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{

String imgid10=rs1.getString("img");

Connection conns=null;
PreparedStatement pss=null;

try
{
con=databasecon.getconnection();

pss=con.prepareStatement ("insert into temp (imgid) values (?)");


pss.setString(1,imgid10);

int x=pss.executeUpdate();

            
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
 




}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}



















































try
{
con=databasecon.getconnection();
PreparedStatement ps1=con.prepareStatement("select * from images where category='"+s2+"' ");
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{

String imgid11=rs1.getString("img");





PreparedStatement psd=null;

try
{
con=databasecon.getconnection();
psd=con.prepareStatement ("insert into temp (imgid) values (?)");


psd.setString(1,imgid11);

int x=psd.executeUpdate();

            
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }

}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}





try
{
con=databasecon.getconnection();
PreparedStatement ps1=con.prepareStatement("select * from images where  keyword='"+s2+"' ");
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{

String imgid12=rs1.getString("img");




Connection conn5=null;
PreparedStatement psd=null;

try
{
con=databasecon.getconnection();
psd=con.prepareStatement ("insert into temp (imgid) values (?)");


psd.setString(1,imgid12);

int x=psd.executeUpdate();

            
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
 
}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}





try
{
con=databasecon.getconnection();
PreparedStatement ps1=con.prepareStatement("select * from images where  category='"+s2+"' ");
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{

String imgid13=rs1.getString("img");




PreparedStatement psd=null;

try
{
con=databasecon.getconnection();
psd=con.prepareStatement ("insert into temp (imgid) values (?)");


psd.setString(1,imgid13);

int x=psd.executeUpdate();

            
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
		
 
}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}





try
{
con=databasecon.getconnection();
PreparedStatement ps1=con.prepareStatement("select * from images where category='"+s3+"' ");
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{
String imgid14=rs1.getString("img");





PreparedStatement ps6=null;

try
{
con=databasecon.getconnection();
ps6=con.prepareStatement ("insert into temp (imgid) values (?)");


ps6.setString(1,imgid14);

int x=ps6.executeUpdate();

            
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }
		
 
}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}


try
{
con=databasecon.getconnection();
PreparedStatement ps1=con.prepareStatement("select * from images where  keyword='"+s3+"' ");
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{
String imgid15=rs1.getString("img");




Connection conn6=null;
PreparedStatement ps6=null;

try
{
con=databasecon.getconnection();
ps6=con.prepareStatement ("insert into temp (imgid) values (?)");


ps6.setString(1,imgid15);

int x=ps6.executeUpdate();

            
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }

}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}


try
{
con=databasecon.getconnection();
PreparedStatement ps1=con.prepareStatement("select * from images where  behaviour='"+s3+"' ");
ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{
String imgid16=rs1.getString("img");





PreparedStatement ps6=null;

try
{
con=databasecon.getconnection();
ps6=con.prepareStatement ("insert into temp (imgid) values (?)");


ps6.setString(1,imgid16);

int x=ps6.executeUpdate();

            
        }
        catch(Exception e)
        {
            out.println(e.getMessage());
        }

}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}

















}
}

catch(Exception e1)
{
out.println(e1.getMessage());
}














response.sendRedirect("nextlink1.jsp");



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

