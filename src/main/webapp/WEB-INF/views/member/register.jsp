<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css" rel="stylesheet">

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
.register-label{
       color: #ffba37;
       font-size: 64px;
       font-weight: bold;
    }
.register-form {
    width: 560px;
    height: 700px;
    background: #ffba37;
    border-radius: 10px;
    position: relative;
    padding: 29px 70px 0 70px;
   }
   
.form-label{
    color: #00394c;
    font-size: 23px;
    font-weight: bold;
   }
/* The Modal (background) */
.searchModal {
display: none; /* Hidden by default */
position: fixed; /* Stay in place */
z-index: 10; /* Sit on top */
left: 0;
top: 0;
width: 100%; /* Full width */
height: 100%; /* Full height */
overflow: auto; /* Enable scroll if needed */
background-color: rgb(0,0,0); /* Fallback color */
background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
/* Modal Content/Box */
.search-modal-content {
background-color: #fefefe;
margin: 15% auto; /* 15% from the top and centered */
padding: 20px;
border: 1px solid #888;
width: 70%; /* Could be more or less, depending on screen size */
}
</style>
<title>회원가입</title>
</head>
<script
   src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">
   $(document).ready(function() {
      // 취소
      $(".cencle").on("click", function() {

         location.href = "/login";

      })

      $("#submit").on("click", function() {
         if ($("#userId").val() == "") {
            alert("아이디를 입력해주세요.");
            $("#userId").focus();
            return false;
         }
         if ($("#userPass").val() == "") {
            alert("비밀번호를 입력해주세요.");
            $("#userPass").focus();
            return false;
         }
         if ($("#userName").val() == "") {
            alert("성명을 입력해주세요.");
            $("#userName").focus();
            return false;
         }

         if ($("#userPhone").val() == "") {
            alert("번호를 입력해주세요.");
            $("#userPhone").focus();
            return false;
         }
      });

   })

   // 우편번호 찾기 화면을 넣을 element
   var element_layer = document.getElementById('addr_layer');

   function sample2_execDaumPostcode() {
      new daum.Postcode(
            {
               oncomplete : function(data) {
                  // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                  // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var addr = ''; // 주소 변수
                  var extraAddr = ''; // 참고항목 변수

                  //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                  if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                     addr = data.roadAddress;
                  } else { // 사용자가 지번 주소를 선택했을 경우(J)
                     addr = data.jibunAddress;
                  }

                  // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                  if (data.userSelectedType === 'R') {
                     // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                     // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                     if (data.bname !== ''
                           && /[동|로|가]$/g.test(data.bname)) {
                        extraAddr += data.bname;
                     }
                     // 건물명이 있고, 공동주택일 경우 추가한다.
                     if (data.buildingName !== ''
                           && data.apartment === 'Y') {
                        extraAddr += (extraAddr !== '' ? ', '
                              + data.buildingName : data.buildingName);
                     }
                     // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                     if (extraAddr !== '') {
                        extraAddr = ' (' + extraAddr + ')';
                     }
                     // 조합된 참고항목을 해당 필드에 넣는다.
                     document.getElementById("sample2_extraAddress").value = extraAddr;

                  } else {
                     document.getElementById("sample2_extraAddress").value = '';
                  }

                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById('sample2_postcode').value = data.zonecode;
                  document.getElementById("sample2_address").value = addr;
                  // 커서를 상세주소 필드로 이동한다.
                  document.getElementById("sample2_detailAddress")
                        .focus();

                  // iframe을 넣은 element를 안보이게 한다.
                  // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
               },
               width : '100%',
               height : '100%',
               maxSuggestItems : 5
            }).open({
               autoClose: true
            });

      // iframe을 넣은 element를 보이게 한다.

      // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
      initLayerPosition();
   }

   // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
   // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
   // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
   function initLayerPosition() {
      var width = 300; //우편번호서비스가 들어갈 element의 width
      var height = 400; //우편번호서비스가 들어갈 element의 height
      var borderWidth = 5; //샘플에서 사용하는 border의 두께

      // 위에서 선언한 값들을 실제 element에 넣는다.
      element_layer.style.width = width + 'px';
      element_layer.style.height = height + 'px';
      element_layer.style.border = borderWidth + 'px solid';
      // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
      element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
            + 'px';
      element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
            + 'px';
   }
   
   function closeModal() {
      $('.searchModal').hide();
   };
   
   function openModal(){
      $('.searchModal').show();
   }
</script>



<body>
   <div class="container-login100">
      <div>
         <label class="register-label">회원가입</label>
         <div class="register-form">
            <section id="container">
               <form role="form" method="post" autocomplete="off">
                  <div class="form-group has-feedback">
                     <label class="form-label" for="userId">아이디</label> 
                     <input class="form-control" type="text" id="userId" name="userId" />
                  </div>
                  <div class="form-group has-feedback">
                     <label class="form-label" for="userPass">패스워드</label> 
                     <input class="form-control" type="password" id="userPass" name="userPass" />
                  </div>
                  <div class="form-group has-feedback">
                     <label class="form-label" for="userName">이름</label> 
                     <input class="form-control" type="text" id="userName" name="userName" />
                  </div>
                  <div class="form-group has-feedback">
                     <label class="form-label" for="userPhone">전화번호</label> 
                     <input class="form-control" type="text" id="userPhone" name="userPhone" />
                  </div>
                  <div class="form-group has-feedback">
                     <label class="form-label" for="userAddr">주소</label> 
                     <div style="display: flex;">
                        <input class="form-control" type="text" style="margin: 0 10px 10px 0;" id="sample2_postcode" placeholder="우편번호" /> 
                        <input type="button" style="height: fit-content; font-size: 16px; padding: 4.6px;" 
                           onclick="sample2_execDaumPostcode()" value="우편번호 찾기" />
                     </div>
                     <input class="form-control" style="margin-bottom: 10px" type="text" id="sample2_address" name="userAddr1" placeholder="주소" /> 
                     <input class="form-control" style="margin-bottom: 10px" type="text" id="sample2_detailAddress" name="userAddr2" placeholder="상세주소" /> 
                     <input class="form-control" type="text" id="sample2_extraAddress" name="userAddr3" placeholder="참고사항" />
                  </div>
                  <div class="form-group has-feedback" style="float:right">
                     <button class="btn btn-success" type="submit" id="submit">회원가입</button>
                     <button class="cencle btn btn-danger" type="button">취소</button>
                  </div>
         
               </form>
            </section>
         </div>
      </div>
   </div>   
   <div id="modal" class="searchModal">
      <div class="search-modal-content">
         <div class="page-header">
            <h3>우편번호 검색</h3>
         </div>
         <div class="row">
            <div class="col-sm-12">
               <div class="row">
                  <div id="addr_layer" style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
                  </div>
               </div>
            </div>
         </div>
         <hr>
         <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="closeModal();">
            <span class="pop_bt modalCloseBtn" style="font-size: 13pt;">닫기</span>
         </div>
      </div>
   </div>
</body>

</html>