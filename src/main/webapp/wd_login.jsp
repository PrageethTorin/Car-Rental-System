<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"><title> withdraw_Login</title>
<link rel="stylesheet" type="text/css" href="Css/header.css">
<link rel="stylesheet" type="text/css" href="Css/footer.css">
<link rel="stylesheet" type="text/css" href="Css/login.css">
</head>
<body>
<%@ include file="header.jsp"%>
<%@ include file="navigation.jsp"%>

<section>
  <div class="form-box">
    <div class="form-value">
      <form action="wd_login" method="post">         //action and post
        <h2>Withdrawal</h2>
        <div class="inputbox">
          <input type="text" name='username' required>
          <label for="">User Name</label>
        </div>
        <div class="inputbox">
          <input type="password" name='password' required>
          <label for="">Password</label>
        </div>
        <button name="submit" type="submit" value="wd_Login">Login</button>
        
        
<div class="register">
          <p style="font-size: 15px;">Don't have a withdraw account <a href="wd_signup.jsp" style="color: red;">create</a></p>
        </div>
       
      </form>
    </div>
  </div>
</section>
<%@ include file="footer.jsp"%>
</html>