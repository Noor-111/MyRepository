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
<% if(request.getParameter("invalid")!=null){ %>
<font color="red">Invalid User ID or Password</font>
<% } %>
<% if(request.getParameter("logout")!=null){
	session.invalidate();%>
	<font color="blue">Logged out successfully</font>
<%} %>
<form action="User.do">
<div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    <input name="userid" type="text" class="form-control"  placeholder=" Enter User ID">
  </div>
  <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
    <input type="text" class="form-control" name="password" placeholder="Password">
  </div>
<!--  <label for="userid">userid:</label> <input type="text" name="userid"><br>
	<label for="password">password:</label> <input type="text" name="password"><br>
-->	<button type="submit">Submit</button>
	

	

</form>

</body>
</html>