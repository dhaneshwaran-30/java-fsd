<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div  height="300" width=100% style="background-color: pink"><pre><h1><center><font color="blue">Admin Login</font></center></h1></pre></div><br>
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
		</font>
	<form action="oes.controller.ValidateAdmin" method="post">
		<pre>
			USERNAME 		:	<input type="text" name="uname">	<br> <br>
			PASSWORD 	        :       <input type="password" name="pass">	 <br><br>
						 	<input  onclick="location.href='index.html'" type="button" value="Exit" class="btn btn-outline-primary">          <input type="submit" value="Login" class="btn btn-outline-primary">
							
		</pre>
	</form>
</body>
</html>