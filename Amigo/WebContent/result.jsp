<%@page import="com.cg.bean.UserBean"%>
<%@page import="java.util.List"%>
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
<% List<UserBean> users = (List)request.getAttribute("USERS"); %>
<table border="1" align="center" bgcolor="wheat">
<tr>
	<th>Name</th>
	<th>User ID</th>
	<th>Gender</th>
	<th>Age</th>
	<th>City</th>
	<th>Email ID</th>
	</tr>

<%for(UserBean ub: users){ %>
<tr>
	<td><%= ub.getName() %></td>
	<td><%= ub.getUserid() %></td>
	<td><%= ub.getGender() %></td>
	<td><%= ub.getAge() %></td>
	<td><%= ub.getCity() %></td>
	<td><%= ub.getEmail() %></td>
	
	</tr>
	<% } %>
</table>
<a href="search.jsp">Search again..</a>
</body>
</html>