<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- call JSp page to java class --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UserAccount</title>
<link rel="stylesheet" type="text/css" href="Css/header.css">
<link rel="stylesheet" type="text/css" href="Css/footer.css">
<link rel="stylesheet" type="text/css" href="Css/home.css">
</head>

<body>
<h1>User Account</h1>
	<c:forEach var="cus" items="${cusDetails}">
	<!-- Call customer class to get Details -->
	
	<c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}}"/>
	<c:set var="username" value="${cus.username}"/>
	<c:set var="password" value="${cus.password}"/>
	
	<p>ID:   ${cus.id}<br></p>
	<p>Name:   ${cus.name}<br></p>
	<p>Email:   ${cus.email}<br></p>
	<p>Phone Number:   ${cus.phone}<br></p>
	<p>UserName:   ${cus.username}<br></p>
	<p>Password:   ${cus.password}<br></p>

	</c:forEach>
	
	<c:url value="Updatecustomer.jsp" var="cusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	<br>
	<a href= "${cusupdate}">
	<input type="button" name="Update" value="Update my Data">
	</a>
	
	<c:url value="Deletecustomer.jsp" var="cusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	<a href= "${cusdelete}">
	<input type="button" name="delete" value="Delete my Data">
	</a>
	
</body>
</html>