<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DeleteUser</title>
</head>
<body>

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
%>

<h1>Customer Account Delete</h1>

<form action="DeleteCustomer" method="post">
	Customer ID <input type="text" name="cusid" value="<%= id%>" readonly><br>
	Name <input type="text" name="name" value="<%= name%>" readonly><br>
	Email <input type="text" name="email" value="<%= email%>" readonly><br>
	Phone number <input type="text" name="phone" value="<%= phone%>" readonly><br>
	User name <input type="text" name="uname" value="<%= username%>" readonly><br>
	
	<input type="submit" name="submit" value="Delete My data"><br>
	
</form>
</body>
</html>