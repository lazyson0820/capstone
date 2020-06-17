<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function pageingBtn(e){
		var pageNum = e.target.text;
		$("#pageNum").val(Number(e.target.text)-1);
		$("#searchForm").submit();
	}
	function nextBtn(){
		var pageNum = $(".pagination .active a").text();
		$("#pageNum").val(Number(pageNum)+9);
		$("#searchForm").submit();
	}
	function beforBtn(){
		var pageNum = Number($(".pagination .active a").text());
		if(pageNum < 10){
			pageNum = 0;
		}else{
			pageNum = pageNum -11;
		}
		$("#pageNum").val(pageNum);
		$("#searchForm").submit();
	}
</script>
<style type="text/css">
	 a:link { color: red; text-decoration: none;}
	 a:visited { color: black; text-decoration: none;}
	 a:hover { color: blue; text-decoration: underline;}
</style>
</head>
<body>
	<c:forEach var="list" items="${productList}" varStatus="status">
	<a href="<c:url value="/productsInDetailer?pid=${list.pid}"/>" style=" text-decoration:none;color:black">
	    <div style="border: 1px solid #eeeeee;width: 215px;height: 300px;margin: 5px;" ><!-- style="width: 300px;height: 300px"  -->
			<img src="${list.product_image}" style="width: 213px;height: 205px;border-bottom: 1px solid #eeeeee;">
	    	<p style="padding:10px;font-size:14px;margin-bottom: 0px;text-overflow: ellipsis;font-weight: 600;overflow: hidden;width: 215px;white-space: nowrap;height: 35px">${list.name}</p>
			<p style="padding-left: 10px;padding-right: 10px;font-size:16px;margin-bottom: 0px;font-weight: bold"><fmt:formatNumber value="${list.price}" pattern="#,###" /> 원</p>
			<p style="font-size:13px;padding:6px;border-top: 1px solid #eeeeee;padding-left: 10px;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;">
				<img src="<%=request.getContextPath()%>/resources/loc.jpg" style="width: 20px;height: 20px">
				<c:choose>
					<c:when  test="${list.location ne ''}">
						${list.location}
					</c:when>
					<c:otherwise>
						 전국				
					</c:otherwise>
				</c:choose>
			</p>
		</div>
	</a>
	</c:forEach>

	<div style="height: 100px;width: 100%;text-align: center;margin-top: 40px;">
		<nav>
		  <ul class="pagination">
		    <li>
		      <c:if test="${pageNum ne 0}">
			      <a href="#" aria-label="Previous" onclick="beforBtn()">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
		      </c:if>
		    </li>
		    <c:choose>
				<c:when test="${pageNum eq 0 || pageNum < 5}">
			    	<c:set var="startNum" value="1" />
			    	<c:set var="endNum" value="10" />
				</c:when>
				<c:otherwise>
					<c:set var="startNum" value="${pageNum-4}"/>
					<c:set var="endNum" value="${pageNum+5}"/>
				</c:otherwise>
			</c:choose>
				<c:forEach var="count" begin="${startNum}" end="${endNum}" step="1">
					<c:choose>
						<c:when  test="${pageNum+1 eq count}">
							<li class="active" onclick="pageingBtn(event)"><a href="#">${count}</a></li>
						</c:when>
						<c:otherwise>
							<li onclick="pageingBtn(event)"><a href="#">${count}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			    <li>
			      <a href="#" aria-label="Next" onclick="nextBtn()">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
		  </ul>
		</nav>
	</div>
</body>
</html>