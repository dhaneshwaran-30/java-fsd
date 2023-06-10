<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><h2><pre><font color="blue">List of all quizes</font></pre></h2></center>
 <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/quiz"
         user = "root"  password = "Dhanesh@30"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from quiztable 
      </sql:query>
 
      <table border = "1" cellpadding = "10">
         <tr>
            <th> ID</th>
            <th>Quiz</th>
            <th>Category</th>
            <th>Action</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.id}"/></td>
               <td><c:out value = "${row.quiz}"/></td>
               <td><c:out value = "${row.category}"/></td>
               <td><a href="updatequiz.jsp">Update</a></td>
               <td><a href="deletequiz.jsp">Delete</a></td>
            </tr>
         </c:forEach>
      </table>
         <input type="button" onclick="location.href='AdminPanel.jsp'" value="Home" class="btn btn-outline-success">
         <th colspan="4"  ><input type="button" value="Add Quiz" class="btn btn-outline-success" onclick="location.href='AddQuiz.jsp'"></th>
          <th colspan="4"  ><input type="button" value="Add Questions" class="btn btn-outline-success" onclick="location.href='AddQuestion.jsp'"></th>  
</body>
</html>