<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title> <tiles:insertAttribute name="title"/></title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/carousel/">

    <!-- Bootstrap core CSS -->
	<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- Favicons -->
	<link rel="icon" href="<c:url value="/resources/icon.ico"/>">
	<link href="<c:url value="/resources/fontAwesome/css/all.css"/>" rel="stylesheet"> <!--load all styles -->


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    
    
    
    <!-- Custom styles for this template -->
    <!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.js"></script> -->
    <link href="<c:url value="/resources/css/carousel.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
  </head>
  
  <body>

	<tiles:insertAttribute name="menu"/>
	
			
			<%-- <div class="dropdown">
				
				<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown">
     			<a href="<c:url value="/category?categoryNo=400&pageNum=0"/>">카테고리</a>
     			<img class="category-img" src="<c:url value="/resources/icon_category.ico"/>">
    			</button>
    			
		   		<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
		   			<a class="dropdown-item" href="<c:url value="/category?categoryNo=400&pageNum=0"/>">패션잡화</a> 
		   			<a class="dropdown-item" href="#">여성의류</a> 
		   			<a class="dropdown-item" href="#">남성의류</a> 
		   			<a class="dropdown-item" href="#">디지털/가전</a> 
		   			<a class="dropdown-item" href="#">도서/티켓/취미/애완</a> 
				    <a class="dropdown-item" href="#">유아동/출산</a>
				    <a class="dropdown-item" href="#">생활/문구/가구/식품</a> 
				    <a class="dropdown-item" href="#">스타굿즈</a> 
				    <a class="dropdown-item" href="#">뷰티/미용</a> 
				    <a class="dropdown-item" href="#">스포츠/레저</a>
				    <a class="dropdown-item" href="#">기타</a> 
				    <a class="dropdown-item" href="#">차량/오토바이</a>
				    <a class="dropdown-item" href="#">구인구직</a> 
				    <a class="dropdown-item" href="#">재능</a> 
				    <a class="dropdown-item" href="#">번개나눔</a>
				    <a class="dropdown-item" href="#">지역 서비스</a> 
				    <a class="dropdown-item" href="#">커뮤니티</a> 
				    <a class="dropdown-item" href="#">원룸</a>
				    
				  </div>
			 </div>--%>
	<main role="main" class="container">
		<div class="row" style="margin-top: 30px">
			<tiles:insertAttribute name="body"/>
		</div>
	</main>
	<tiles:insertAttribute name="footer"/>
  	
  
<!-- <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
 --><script src="<c:url value="/resources/js/bootstrap.bundle.min.js"/>" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
</body>
</html>
<div id="frogue-container" class="position-right-bottom"
      data-chatbot="0eddddd1-0ae0-4b4c-9112-9a533fba7966"
      data-user="0eddddd1-0ae0-4b4c-9112-9a533fba7966"
      data-init-key="value"
      ></div>
<!-- data-init-식별키=값 으로 셋팅하면 챗플로우에 파라미터와 연동가능. 식별키는 소문자만 가능 -->
<script>
(function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "https:\/\/danbee.ai/js/plugins/frogue-embed/frogue-embed.min.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'frogue-embed'));
</script>
