<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>

<style>
   
    .container-login100 {
       width: 100%;
       min-height: 100vh;
       display: -webkit-box;
       display: -webkit-flex;
       display: -moz-box;
       display: -ms-flexbox;
       display: flex;
       flex-wrap: wrap;
       justify-content: center;
       align-items: center;
       padding: 15px;
       background-color: #00394c;
       padding: 70px;
   }
    
    .login-form {
       width: 560px;
       height: 376px;
       background: #ffba37;
       border-radius: 10px;
       position: relative;
       padding: 29px 70px 0 70px;
    }
    .login-label{
       color: #ffba37;
       font-size: 64px;
       font-weight: bold;
       
    }
    
    .form-label{
       color: #00394c;
       font-size: 23px;
       font-weight: bold;
   }
   
   .login100-form-btn {
   font-family: Raleway-Bold;
    font-size: 16px;
    color: #fff;
    line-height: 1.2;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 0 23px;
    min-width: 120px;
    height: 55px;
    background-color: #333333;
    border-radius: 27px;
    -webkit-transition: all 0.4s;
    -o-transition: all 0.4s;
    -moz-transition: all 0.4s;
    transition: all 0.4s;
}

    #login-form > div {
        margin: 15px 0;
    }

</style>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">
<title>로그인</title>

</head>
<body>
   <div class="container-login100">
      <div>
      <label class="login-label">로그인</label>
      <div class="login-form">
         <form method="post" action="/UsMarket/member/login">
            <div class="form-group has-feedback">
               <label class="form-label" for="userId" >아이디</label> 
               <input class="form-control" type="text" id="userId" name="userId" style="font-size: 18px; line-height: 2.5;"/>
            </div>
            <div class="form-group has-feedback">
               <label class="form-label" for="userPass">패스워드</label> 
               <input class="form-control" type="password" id="userPass" name="userPass" style="font-size: 18px; line-height: 2.5;"/>
            </div>
            
            <div style="display: flex; float: right; margin-top: 16px;">
            <button class="login100-form-btn" type="submit">로그인</button>
            <button class="login100-form-btn" style="margin-left: 10px;" type="button" onclick="location='register'">회원가입</button>
            </div>
         </form>
      </div>
      </div>
   </div>
  </body>

</body>

</html>