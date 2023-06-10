<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="oes.model.*"%>
<%@page import="oes.db.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><h3><pre><font color="blue">List of all questions</font></h3></pre></center>
<table border ="1" cellpadding ="5">
<tr class="table-dark">
 <th>s no.</th>
 <th>Question</th>
 <th>Option A </th>
 <th>Option B </th>
 <th>Option C </th>
 <th>Option D </th>
 <th>Correct Answer</th>
 <th>Update</th>
 <th>Delete</th>
</tr>
<tr>
<%
   int i = 0;
   ArrayList<Questions> allQuestions = QuestionsDao.getAllRecords();
  for(Questions e : allQuestions)
  {  if(request.getParameter("ques").equals(e.getQuestion())) 
	{
      %>
		<tr  class="table-primary">
			<form action="updatequestionnow.jsp">
			<input type="hidden" value="<%=e.getQuestion()%>" type="text" name="quesoriginal">
			<td><%=i++%></td>
			<td> <input type="text" value="<%=e.getQuestion()%>" name="quesmodified"></input> </td>
			<td> <input type="text" value=<%=e.getA() %> name="opta" ></input>  </td>
			<td> <input type="text" value=<%=e.getB() %> name="optb" ></input>  </td>
			<td> <input type="text" value=<%=e.getC() %> name="optc" ></input>  </td>
			<td> <input type="text" value=<%=e.getD() %> name="optd" ></input>  </td>
			<td> <input type="text" value=<%=e.getAnswer() %> name="ans" ></input>  </td>
			<td> <input type="submit" value="update"> </td>
			 <td><a href="deletequestion.jsp?ques=<%=e.getQuestion()%>">Delete</a></td>
			</form>
		</tr>
    <%	
	}
	else
	{ 
	%>   <tr>
  <td><%=i++%></td>
  <td><%=e.getQuestion() %></td>
  <td><%=e.getA()%></td>
  <td><%=e.getB()%></td>
  <td><%=e.getC()%></td>
  <td><%=e.getD()%></td>
  <td><%=e.getAnswer()%></td>
  <td><a href="updatequestion.jsp?ques=<%=e.getQuestion()%>">Update</a></td>
  <td><a href="deletequestion.jsp?ques=<%=e.getQuestion()%>">Delete</a></td>
  </tr>
  <%
  }
  }
  %>
</tr>
<th colspan="4"  ><center><input type="button" class="btn btn-outline-success" value="Add Question" onclick="location.href='AddQuestion.jsp'"></center></th>
<th><input type="hidden"></th>
<th colspan="4"  ><center><input type="button" class="btn btn-outline-danger" value="Back to Panel" onclick="location.href='AdminPanel.jsp'"></center></th>
</table>
</body>
</html>