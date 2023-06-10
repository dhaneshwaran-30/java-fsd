<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="oes.model.QuestionsDao"%>
 <%@page import="oes.db.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EXAMINATION</title>
</head>
<body>

<form action="Result.jsp" name="formb">
 <div  height="300" width=100% style="background-color: blue"><pre><h1><center><font color="white">Its Quiz Time...</font></center></h1></pre></div><br>
<font color="red">Questions Left</font>
 
   <table border ="10" cellpadding ="20">
    <thead>
<tr class="table-warning">
 <th>s no.</th>
 <th>Question</th>
 <th>Option A </th>
 <th>Option B </th>
 <th>Option C </th>
 <th>Option D </th>
</tr>
</thead>
<tr>

<%
   int i = 1;
  
   int radioname = 0;
   ArrayList<Questions> allQuestions = QuestionsDao.getAllRecords();
  for(Questions e : allQuestions)
  {   
	  %><%=i%><%  
  
  %>
    
   <tr>
  <td><%=i++%></td>
  <td><%=e.getQuestion() %></td>
  <td><input type="radio" value="a" name="<%=radioname%>"><%=e.getA()%></td>
  <td><input type="radio" value="b" name="<%=radioname%>"><%=e.getB()%></td>
  <td><input type="radio" value="c" name="<%=radioname%>"><%=e.getC()%></td>
  <td><input type="radio" value="d" name="<%=radioname%>"><%=e.getD()%></td>
  

  
  
  </tr>

<input type="radio" value="e" name="<%=radioname %>" checked="checked" name=<%=radioname %>>
 
  <%
  radioname++;
  }
  %>
  </table><br>
  <center><input class="btn btn-outline-success btn-lg" type="submit" value="submit"></center>
 
  </form>
</body>
</html>