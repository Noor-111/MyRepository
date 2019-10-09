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
<form action="User.do">
Name: <input type="text" name="name"><br><br>
Age: <select name="age">
<%for(int a=18;a<=50;a++){ %>
<option value="<%= a %>"><%= a %></option>
<% } %>
</select>
<br><br>
Gender: <input type="radio" name="gender" value="Male">M
<input type="radio" name="gender" value="Female">F
<br><br>
City: <select name="city">
<% String[] cities ={"Mumbai","Pune","Nagpur","Nashik","Goa","Hyderabad","Bangalore"};%>

	<% for(String ct :cities){%>
	
	<option value="<%= ct%>"><%= ct %></option>
	<% } %>
</select>
<br><br>
userid: <input type ="text" name="userid"><br><br>
password: <input type="text" name="password"><br><br>
email: <input type="email" name = "email"><br><br>
<button type="submit" >Submit</button>

</form>
</body>
</html>