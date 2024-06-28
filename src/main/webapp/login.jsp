<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"><title>Login</title>
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
      <form action="login" method="post">         //action and post
        <h2>Login</h2>
        <div class="inputbox">
          <input type="email" name='email' required>
          <label for="">Email</label>
        </div>
        <div class="inputbox">
          <input type="password" name='pwd' required>
          <label for="">Password</label>
        </div>
        <button name="submit" type="submit">Log in</button>
        
        

        <div class="register">
          <p style="font-size: 15px;">Don't have a account <a href="signup.jsp" style="color: red;">Register</a></p>
        </div>
      </form>
    </div>
  </div>
</section>
<%@ include file="footer.jsp"%>
</html>