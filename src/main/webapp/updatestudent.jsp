<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="oes.model.StudentsDao"%>
<%@page import="oes.db.Students"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update student</title>
</head>
<body>
 <center><h3><pre><font color="blue">List of all Users</font></pre></h3></center>
<table class="table table-bordered table-hover">
<tr tr class="table-dark">
 <th>s no.</th>
 <th>User Id</th>
 <th>name</th>
 <th>password</th>
 <th>Update</th>
 <th>Delete</th>
</tr>
<tr>
<%
   int i = 0;
   ArrayList<Students> allstudents = StudentsDao.getAllRecords();
  for(Students e : allstudents)
  {  if(request.getParameter("username").equals(e.getUsername())) 
	{
      %>
		<tr  class="table-primary">
			<form action="updatestudentnow.jsp">
			<input type="hidden" value="<%=e.getUsername()%>" type="text" name="usernameoriginal">
			<td><%=i++%></td>
			<td> <input type="text" value="<%=e.getUsername()%>" name="uname"></input> </td>
			<td> <input type="text" value=<%=e.getName() %> name="name" ></input>  </td>
			<td> <input type="text" value=<%=e.getPassword() %> name="pass" ></input>  </td>
			<td> <input type="submit" value="update"> </td>
			<td><a href="deletestudent.jsp?username=<%=e.getUsername()%>">Delete</a></td>
			</form>
		</tr>
    <%	
	}
	else
	{ 
	%>
   <tr>
   <td><%=i++%></td>
   <td><%=e.getUsername() %></td>
   <td><%=e.getName()%></td>
   <td><%=e.getPassword() %></td>
   <td><a href="updatestudent.jsp?username=<%=e.getUsername()%>">Update</a></td>
   <td><a href="deletestudent.jsp?username=<%=e.getUsername()%>">Delete</a></td>
   </tr>
   <%
    }
  }
    %>
<tr>
<th colspan="2"><center><input type="button" class="btn btn-outline-success" value="Add Student" onclick="location.href='AddStudent.jsp'"></center></th>
<th colspan="2"><input type="hidden"></th>
<th colspan="2"  ><center><input type="button" class="btn btn-outline-danger" value="Back to Panel" onclick="location.href='AdminPanel.jsp'"></center></th>
</tr>
</table>
</body>
</html>