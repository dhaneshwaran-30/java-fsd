<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="oes.model.InstructionsDao"%>
<%@page import="oes.db.Instructions"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><h2><pre><font color="blue">List of all instructions</font></pre></h2></center>
<table border ="1" cellpadding ="5">
<tr tr class="table-dark">
 <th>s no.</th>
 <th>Instruction</th>
 <th>Update</th>
 <th>Delete</th>
</tr>
<tr>
<tr>
<%
   int i = 0;
   ArrayList<Instructions> allinsts = InstructionsDao.getAllRecords();
  for(Instructions e : allinsts)
  {   
	  
  
  %>
   <tr>
  <td><%=i++%></td>
  <td><%=e.getInstruction()%></td>

  <td><a href="updateinstruction.jsp?inst=<%=e.getInstruction()%>">Update</a></td>
  <td><a href="deleteinstruction.jsp?inst=<%=e.getInstruction()%>">Delete</a></td>

  </tr>
  <%
  }
  %>
<tr>
<th colspan="1"  rowspan="2"><center><input type="button" class="btn btn-outline-success"value="Add Instruction" onclick="location.href='AddInstruction.jsp'"></center></th>
<th colspan="2"><input type="hidden"></th>
<th colspan="1"  ><center><input type="button"  class="btn btn-outline-danger" value="Back to Panel" onclick="location.href='AdminPanel.jsp'"></center></th>
</tr>
</table>


</body>
</html>