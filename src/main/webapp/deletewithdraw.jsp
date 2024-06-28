<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete withdraw details</title>
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
    input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
    }

    /* Add some margin to the buttons */
    input[type="submit"] {
        margin: 10px;
    }

    /* Change the button color on hover */
    input[type="submit"]:hover {
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
 
  margin: auto;
  width: 50%;
  padding: 10px;
   border-radius: 5%;
   border-color:yellow;
   background-color: black;
   }
  
   .dith  {
       * Increase button size */
         /* Increase the margin */
         font-size: 30px;
         line-height: normal;
         display: inline-block;
         vertical-align: middle;
         color: yellow;
        margin-top:1%;
          margin-left:9%;
        position:absolute; 
    }
       .dith form {
       
        padding: 20px;
        background-color: #333;
        border-radius: 10px;
        border: 2px solid yellow;
        width: 130%;
        margin: 0 auto;
    }

    .dith form input[type="text"] {
        padding: 10px;
        margin: 10px 0;
        width: 100%;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 18px;
    }


</style>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="navigation.jsp" %>

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String bank = request.getParameter("bank");
	String accountnumber = request.getParameter("accountnumber");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
%>

<div class="qith">

<h1>Delete withdraw details</h1>
<div class="with">

<div class="dith">
<form action="delete" method="post">
    ID <input type="text" name="id" value="<%= id%>" readonly><br>
	Name <input type="text" name="name" value="<%= name%>" readonly><br>
	bank <input type="text" name="bank" value="<%= bank%>" readonly><br>
	account Number <input type="text" name="accountnumber" value="<%= accountnumber%>" readonly><br>
	User name <input type="text" name="username" value="<%= username%>" readonly><br>
	
	<input type="submit" name="submit" value="Delete withdraw data">
	<br>
	
</form>


 <p style="font-size: 15px;">Do you want to Cancel <a href="wd_login.jsp" style="color: red;">Cancel</a></p>

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