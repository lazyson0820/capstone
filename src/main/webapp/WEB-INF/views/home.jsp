<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



  <div id="myCarousel" class="carousel slide" data-ride="carousel" style=" text-align: center;">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" style="width: 1140px;">
      <div class="carousel-item active">
        <img src="<c:url value="/resources/images/메인인사.jpg"/>" style="width: 100%;">
      </div>
      <div class="carousel-item">
         <img src="<c:url value="/resources/images/사용법.jpg"/>" style="width: 100%;">
      </div>
      <div class="carousel-item">
      	<img src="<c:url value="/resources/images/제작진.jpg"/>" style="width: 100%;">      
      </div>
    </div>
    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>


  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <div class="container marketing">

  </div><!-- /.container -->
