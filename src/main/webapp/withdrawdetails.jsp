<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- call JSp page to java class --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>withdraw details</title>
<link rel="stylesheet" type="text/css" href="Css/header.css">
<link rel="stylesheet" type="text/css" href="Css/footer.css">
<style type="text/css">
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }

    h1 {
        color: yellow;
        text-align: center;
    }
    
       h4 {
        color: yellow;
       
    }
    

    p {
        margin: 10px 0;
        size : 120%
        
        
    }

    /* Style the buttons */
    input[type="button"] {
        background-color: #007BFF;
        color: #fff;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
    }

    /* Add some margin to the buttons */
    input[type="button"] {
        margin: 10px;
    }

    /* Change the button color on hover */
    input[type="button"]:hover {
        background-color: #0056b3;
    }

    /* Style links */
    a {
        text-decoration: none;
        color: #007BFF;
    }

    /* Style links on hover */
    a:hover {
        text-decoration: underline;
       
        
    }
    
    
    .qith{
     background-color: black;
  
    
    }
    
    .with {
  border: 5px solid;
  margin: auto;
  width: 50%;
  padding: 10px;
   border-radius: 3%;
   border-color:yellow;
   background-color: black;
  
     .dith  {
       * Increase button size */
         /* Increase the margin */
        font-size: 25px; /* Increase the font size */
         line-height: normal;
         display: inline-block;
         vertical-align: middle;
         color: yellow;
     
        
    }
  
}
</style>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="navigation.jsp" %>

<div class="qith">
<h1>Withdraw Details</h1>
<div class="with">

<div class="dith">


	<c:forEach var="dus" items="${wdDetails}">
	<!-- Call customer class to get Details -->
	
	<c:set var="id" value="${dus.id}"/>
	<c:set var="name" value="${dus.name}"/>
	<c:set var="bank" value="${dus.bank}"/>
	<c:set var="accountnumber" value="${dus.accountnumber}"/>
	<c:set var="username" value="${dus.username}"/>
	<c:set var="password" value="${dus.password}"/>
	
	<p>ID:   ${dus.id}<br></p>
	<p>Name:   ${dus.name}<br></p>
	<p>Bank:   ${dus.bank}<br></p>
	<p>Phone account number:   ${dus.accountnumber}<br></p>
	<p>UserName:   ${dus.username}<br></p>
	<p>Password:   ${dus.password}<br></p>

	</c:forEach>
	
  <c:url value="wd_updatewithdraw.jsp" var="dusupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="bank" value="${bank}"/>
		<c:param name="accountnumber" value="${accountnumber}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	<br>
	
	<a href= "${dusupdate}">
	<input type="button" name="wd_Update" value="Update withdraw">
	</a>
	
	
		<c:url value="deletewithdraw.jsp" var="dusdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="bank" value="${bank}"/>
		<c:param name="accountnumber" value="${accountnumber}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	<a href= "${dusdelete}">
	<input type="button" name="delete" value="Delete my Data">
	</a>
	
</div>	
	
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</div>
<h4>Drop me</h4>
</div>


</body>

<%@ include file="footer.jsp" %>
</html>