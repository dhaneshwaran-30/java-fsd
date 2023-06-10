<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="oes.model.InstructionsDao"%>
<%@page import="oes.db.Instructions"%>
<%@page import="java.util.ArrayList"%>
<%@page import="oes.model.StudentsDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   String name = StudentsDao.getStudentName(session.getAttribute("username").toString());
%> 
<div height="100" width=200% style="background-color: blue">
  
     <center><h2> <font  color ="white">Welcome   <%out.println(name); %></font></h2></center>
   
</div>
<center>
<center><font color ="green"> <h2>Quiz : java</h2></font></center>
<pre>
<table class="table table-hover">
<tr>
 
 <th colspan="2"><center><h2><font color="red">Instructions For Examination </font></h2></center></th>
</tr>
<tr>
<tr>
<%
   int i = 1;
   ArrayList<Instructions> allinsts = InstructionsDao.getAllRecords();
  for(Instructions e : allinsts)
  {   
  %>
   <tr>
  <td><h3><%=i++%>)</h3></td>
  <td><h3><%=e.getInstruction()%></h3></td>
  </tr>
  <%
  }
  %>
<tr>
</table>
<pre>
<button type="button" class="btn btn-outline-primary btn-lg" onclick="location.href='oes.controller.Logoutstudent'">Logout</button>   <button type="button" class="btn btn-outline-primary btn-lg" onclick="location.href='Exam.jsp'">Start Test</button>
</pre>
</pre>
</center>
	
</body>
</html>