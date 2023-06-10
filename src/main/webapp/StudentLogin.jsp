<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login</title>
</head>
<body>
 <div  height="300" width=100% style="background-color: grey"><pre><h1><center><font color="white">User Login</font></center></h1></pre></div><br>
	<font color="red" >
		<%
			if(request.getParameter("msg") != null)
				out.print(request.getParameter("msg"));
		%>
		</font>
		<font color="green" >
		<%
			if(request.getParameter("msg1") != null)
				out.print(request.getParameter("msg1"));
		%>
		</font>
	<form action="oes.controller.Validatestudent" method="post">
		<pre>
			USER ID     :<input type="text" name="uname">  <br><br>
			PASSWORD	:<input type="password" name="pass"> <br><br>
			                  <input  onclick="location.href='AddStudent.jsp'" type="button" value="Register" class="btn btn-outline-primary">	<input  onclick="location.href='index.html'" type="button" value="Exit" class="btn btn-outline-primary">          <input type="submit" value="Login" class="btn btn-outline-primary">
				
		</pre>
	</form>
	
</body>
</html>