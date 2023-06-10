<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add students</title>
</head>
<body>
<h2><font  face = "WildWest" color="blue">Enter User Details</font></h2>
<form action="oes.controller.Studentinsert">
<pre>
Name:         <input type="text" name="name">

User id:      <input type="text" name="uname">

Password:     <input type="text" name="pass">

             
             <input type="submit" value="Register" class="btn btn-outline-primary">   <input type="button" onclick="location.href='AdminPanel.jsp'" value="Home" class="btn btn-outline-success">    <input type="button" onclick="location.href='StudentList.jsp'" value="Back" class="btn btn-outline-danger">
</pre>
</form>
<div>
<font color="red" >
		<%
			if(request.getParameter("msg2") != null)
				out.print(request.getParameter("msg2"));
		%>
		</font>
			<font color="green" >
		<%
			if(request.getParameter("msg1") != null)
				out.print(request.getParameter("msg1"));
		%>
</body>
</html>