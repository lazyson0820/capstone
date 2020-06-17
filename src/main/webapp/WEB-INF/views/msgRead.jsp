<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>

.container-message {
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

.message-label{
       color: #ffba37;
       font-size: 50px;
       font-weight: bold;
       
   }
   
.login-form {
       width: 560px;
       height: 376px;
       background: #ffba37;
       border-radius: 10px;
       position: relative;
       padding: 29px 70px 0 70px;
    }
    
.font{
   color: #ffba37;
   font-size: 20px;
     
   }
   
.subject {
	color: #ffba37;
    font-size: 25px;
  

}    

</style>

<title>Insert title here</title>
</head>
<body>
<div class="container-message">
<div class="panel panel-default">
    <div class="panel-heading" style="height: 50px;">
        <div style="float: left;">
            <p class="message-label">메시지</p>
        </div>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead >
                <tr >
                	<th class = "subject">보낸사람</th>
                    <th class = "subject">내용</th>
                    <th class = "subject">보낸시간</th>
                </tr>
            </thead>
            
	            <c:forEach var="vo" items="${list}">
	                
	                
	                    <tr class = "font">
	                    
	                   		<td>${vo.userSend}</td>
	                        <td>${vo.msg}</td>
	                        <td>${vo.date}</td>
	                     
	                    </tr>
	                
	              
	            </c:forEach>
            
        </table>
    </div>
</div>

</div>






     

</body>
</html>