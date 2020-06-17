<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>



<meta charset="UTF-8">
<title>Message Send</title>
<style>
    .container-pop100 {
       width: 100%;
       min-height: 100vh;
       background-color: #00394c;
     
       position: relative;
    
   }
   
   .msg-form {
       width: 162px;
       height: 205px;
       background: #ffba37;
       border-radius: 10px;
       position: absolute;
       padding: 29px 70px 0 70px;
       top: 50%;
       left: 50%;
       transform: translate(-50%, -50%); 
    }
    
    .form-label{
       color: #00394c;
       font-size: 20px;
       font-weight: bold;
   }
   
      .msg100-form-btn {
      font-family: Raleway-Bold;
       font-size: 16px;
       color: #fff;
       padding: 2px 10px;
       background-color: #333333;
       border-radius: 27px;
       
   }
</style>
</head>
<body>
   <div class="container-pop100">
    
         <div class="msg-form" style="height:292px;">
            <form id="popup_home" target="_parent" role="form" method="post" autocomplete="off">
            
               <div class="form-group has-feedback">
                  <label class="form-label" for="userSend">보내는이</label> 
                  <input class="form-control" style="width: 155px; "type="text" readonly="readonly"
                  value="" required="required" id="userSend" name="userSend" /><!-- 
                    <input class="form-control" style="width: 155px; "type="text" id="userSend" name="userSend" /> 새벽s-->
               </div>
               
               <div class="form-group has-feedback">
                  <label class="form-label" for="userReceive">받는이</label> <input
                     class="form-control" style="width: 155px; type="text" id="userReceive" name="userReceive" />
               </div>
               
               <div class="form-group has-feedback" style="position: relative; right: 2px;">
                  <label class="form-label" for="msg" style="position: relative; left: 3px;">메시지내용</label> 
                <!--   <input class="form-control" style="width: 155px; type="text" id="msg" name="msg" /> -->
                  <textarea rows="10" cols="20" name="msg"></textarea>
               </div>
          
               <div style="margin: 10px 0 0 20px;">
                  <input class="msg100-form-btn" type="button" onclick="popupClose()" value="전송"/>
                  <input class="msg100-form-btn" type="button" onclick="window.close()" value="취소"/>
               </div>
      
            </form>
         </div>
     
   </div>
</body>

<!-- submit, 메세지db저장, 창닫기  -->
<script>
// 자동으로 팝업 창이 닫히게 하는 함수
function popupClose() {
   
    // form의 target을 부모 창으로 설정함            
    var form =  document.getElementById("popup_home");
    
    form.submit();
    window.close();
    
}


</script>
</html>