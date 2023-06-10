<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% if(session.getAttribute("username") !=null)
	{
	
	}
else
{
	String msg2 = "Please Login as Admin to Continue";
	response.sendRedirect("AdminLogin.jsp?msg2="+msg2);
}
	%>
<div height="250" width=100% style="background-color: yellow">
  <marquee behavior="alternate">
     <h1> <font  color ="green">Welcome   <%out.println(session.getAttribute("username")); %></font></h1><br><br>
  </marquee>
</div>
<center>
  <div class="container-fluid">
    <div class="row">
    <div  height="300" width=100% style="background-color: orange"><pre><h1><center><font color="blue">User List</font></center></h1></pre></div><br>
      <div class="col-sm-6"><center><input onclick="location.href='StudentList.jsp';" type="button" value="Users" class="btn btn-outline-primary btn-lg btn-block"></center> </div><br>
      <div  height="300" width=100% style="background-color: red"><pre><h1><center><font color="yellow">Instruction List</font></center></h1></pre></div><br>
      <div class="col-sm-6"><center><input onclick="location.href='InstructionList.jsp';" type="button" value="Instructions" class="btn btn-outline-primary btn-lg btn-block"></center></div><br>
      <div  height="300" width=100% style="background-color: pink"><pre><h1><center><font color="black">Quiz List</font></center></h1></pre></div><br>
      <div class="col-sm-6"><center><input onclick="location.href='QuizList.jsp';" type="button" value="Quiz" class="btn btn-outline-primary btn-lg btn-block"></center></div><br>
    </div>  
  </div>
  <pre>
  </pre>
   <div class="container-fluid">
    <div class="row">
    <div  height="300" width=100% style="background-color: green"><pre><h1><center><font color="white">Question List</font></center></h1></pre></div><br>
      <div class="col-sm-6"><center><input onclick="location.href='QuestionList.jsp'"type="button" value="Questions" class="btn btn-outline-primary btn-lg btn-block"></center></div><br>
      <div class="col-sm-6"><center><input onclick="location.href='oes.controller.Logoutadmin'"type="button" value="Logout" class="btn btn-outline-primary btn-lg btn-block"></center></div><br>
    </div>  
  </div>
  </center>
</body>
</html>