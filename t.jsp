<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
<meta charset="UTF-8" />
<title>JSP with the current date</title>
 </head>
 <body>
 <%java.text.DateFormat df = new java.text.SimpleDateFormat("hh/mm/ss/ms"); 
 String tt=df.format(new java.util.Date());
 
 %>
<h1>Current Time: <%= tt %> </h1>
</body>
</html>