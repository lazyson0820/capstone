<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css?">

<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>home</title>


<script src="https://code.jquery.com/jquery-3.3.1.min.js"  type="text/javascript"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
   <!-- Bootstrap core CSS -->
<link href="<%=request.getContextPath()%>/resources/css/offcanvas.css" rel="stylesheet">
   


<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/resources/css/offcanvas.css"
   rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Sunflower:300"
   rel="stylesheet">
<style>
.fontcolor {
   color: /* #878787 */ #f8f9fa;
}
.botton_common {
   display: inline-block;
   width: 24%;
   height: 100%;
   margin-left: 3px;
   margin-top: 3px;
}

.botton_center {
   text-align: center;
}

.botton_center p {
   font-size: 18;
   font-weight: 600;
   margin-top: 6px;
   margin-bottom: 3px;
   color: black;
}

.botton_center span {
   font-size: 14;
   font-weight: 200;
   color: gray;
}

.botton_center a {
   text-decoration: none
}

#latelybox {
   display: none;
}

.text-muted {
   color: white !important;
}

.login-name {
   color: #ffba37;
    font-size: 20px;
    font-weight: bold;
   float:left;
}

</style>
<script>
function searchBtn(){
   $("#pageNum").val('0');
   $("#searchForm").submit();
}
function testAjax(){
   var sendUserId= 'sb0820'
   alert('sda');
   
   $.ajax({
       url: "/UsMarket/testAjax",
       type: "GET",
       data: "name="+name,
       success: function(data){
         alert(data.resultMsg)
       },
       error: function (request, status, error){        

       }
     });
}


</script>

</head>
<header class="blog-header py-3">
   <div class="row flex-nowrap justify-content-between align-items-center">
      <div class="col-4 pt-1"></div>
      <div class="col-4 text-center">
         <a class="blog-header-logo text-dark"
            href="<%=request.getContextPath()%>/"
            style="text-decoration: none; font-size: 27px; font-weight: 700; color: black;">
         <img src="<c:url value="/resources/images/타이틀.jpg"/>" style="width: 100%;"></a>
      </div>
      <div class="col-4 d-flex justify-content-end align-items-center">
      </div>
   </div>
</header>
<header class="blog-header py-3">
<div class="row">
        <div class="col-md-8">
            <li class="nav-item dropdown" style="list-style: none">
            <div class="dropdown show">
            <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">
                <img class="category-img" src="<c:url value="/resources/icon_category.ico"/>"></button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                   <a class="dropdown-item" href="<c:url value="/category?categoryNo=400&pageNum=0"/>">패션잡화</a> 
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=310&pageNum=0"/>">여성의류</a> 
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=320&pageNum=0"/>">남성의류</a> 
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=600&pageNum=0"/>">디지털/가전</a> 
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=900&pageNum=0"/>">도서/티켓/취미/애완</a> 
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=500&pageNum=0"/>">유아동/출산</a>
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=800&pageNum=0"/>">생활/문구/가구/식품</a> 
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=910&pageNum=0"/>">스타굿즈</a> 
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=410&pageNum=0"/>">뷰티/미용</a> 
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=700&pageNum=0"/>">스포츠/레저</a>
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=999&pageNum=0"/>">기타</a> 
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=750&pageNum=0"/>">차량/오토바이</a>
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=240&pageNum=0"/>">구인구직</a> 
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=210&pageNum=0"/>">재능</a> 
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=200&pageNum=0"/>">번개나눔</a>
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=220&pageNum=0"/>">지역 서비스</a> 
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=100&pageNum=0"/>">커뮤니티</a> 
             <a class="dropdown-item" href="<c:url value="/category?categoryNo=230&pageNum=0"/>">원룸</a>
                 </div>
              </div>
         </li> 
        </div>
        
       
        
        <div class="col-md-4">
           <ul class="nav">
              <a class="text-muted" href="#"> 
              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
               viewBox="0 0 24 24" fill="none" stroke="currentColor"
               stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
               class="mx-3" style="color: #ffba37;">
               <circle cx="10.5" cy="10.5" r="7.5"></circle>
               <line x1="21" y1="21" x2="15.8" y2="15.8"></line></svg>

            </a>

               <c:choose>
                  <c:when test="${categoryNo == ''|| categoryNo == null }">
                     <form id="searchForm"action="<c:url value="/productsList"/>">   
                  </c:when>
                  <c:otherwise>
                     <form id="searchForm"action="<c:url value="/category"/>">   
                  </c:otherwise>
               </c:choose>
               <form>
                  <input type="hidden" name="categoryNo" id="categoryNo" value="${categoryNo}"/>
                  <input type="text" name="searchVal" id="searchVal" value="${searchVal}" />
                  <input type="hidden" name="pageNum" id="pageNum" value="${pageNum}" />
                  <button type="button" onclick="searchBtn()">검색</button>
            
               </form>
         <div style = "margin: 10px; margin-left: 52px; width: 350px">
            <c:choose>
               <c:when test="${member eq null}">
                  <a class="btn btn-sm btn-outline-secondary"
                     href="<%=request.getContextPath()%>/member/loginForm">로그인 </a>
                  <a class="btn btn-sm btn-outline-secondary"
                     href="<%=request.getContextPath()%>/member/register">회원가입</a>
                  <a class="btn btn-sm btn-outline-secondary"
                     href="<%=request.getContextPath()%>/member/loginForm">메시지</a>
               </c:when>
               <c:otherwise>
                  <a class="btn btn-sm btn-outline-secondary" id="logout" href="<%=request.getContextPath()%>/member/logOut">로그아웃</a>
                  <a class="btn btn-sm btn-outline-secondary"
                     href="<%=request.getContextPath()%>/msgRead">메시지</a>
               </c:otherwise>
            </c:choose>
         <c:if test="${member ne null}">
              <p class="login-name">${member.userName}님 환영합니다</p>
           </c:if>                     
         </div>
           </ul>
        </div>
</div>
</header>         

<!-- 메뉴바 -->
<div class="nav-scroller py-1 mb-2"
   style="background-color: #00394c; border-bottom-color: #EAEAEA">
   <nav class="nav d-flex justify-content-between"
      style="width: 1100px; margin: auto;">
      
      <a   class="p-2 text-muted"
         href="<%=request.getContextPath()%>/notice">공지사항</a>
      <a   class="p-2 text-muted"
         href="<%=request.getContextPath()%>/faq">FAQ</a>
      <a   class="p-2 text-muted"
         href="<%=request.getContextPath()%>/use">사용법</a>
      <a   class="p-2 text-muted"
         href="https://thecheat.co.kr/rb/?mod=_search">피해사례 검색</a> 
      
      
   </nav>

</div>

<main role="main" class="container">
<div class="row" style="margin-top: 30px">

</div>
</main>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
   