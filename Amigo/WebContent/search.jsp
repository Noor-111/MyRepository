<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="include.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Amigo.com</title>
</head>
<body>
<%@ include file="banner.html" %>
<% String name= (String)session.getAttribute("USER");
	if(name != null){%>
	<p> Welcome <%= name %> | <a href="home.jsp?logout=yes">Logout</a>
	<% } else{response.sendRedirect("home.jsp");} %>

<form action="Search.do">
<table  align="center" class="table-striped">
<tr><th style="text-align:center">ageTo</th>
	<td><select name="ageTo">
	<%for(int a=18;a<=50;a++){ %>
<option value="<%= a %>"><%= a %></option>
<% } %>
</select><br>
</td>
<tr><th style="text-align:center">ageFrom</th>
	<td><select name="ageFrom">
	<%for(int a=18;a<=50;a++){ %>
<option value="<%= a %>"><%= a %></option>
<% } %>
</select><br>
</td>
<tr><th>Gender:</th>
	<td><input type ="radio" name="gender" value="Male">M&nbsp;
	<input type="radio" name="gender" value="Female">F<br></td></tr>
<tr><td>City:</td>
<td><select name="city">
<option value="">Select</option>
<% String[] cities ={"Mumbai","Pune","Nagpur","Nashik","Goa","Hyderabad","Bangalore"};%>

	<% for(String ct :cities){%>
	
	<option value="<%= ct%>"><%= ct %></option>
	<% } %>
</select></td></tr>
<tr><td align=center colspan="2"><input  type="submit" value="Search"></td></tr>


</table>
</form>
</body>
</html>