<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
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


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4986489384e3997462a5ded1579f9702&libraries=services,clusterer,drawing"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha256-4+XzXVhsDmqanXGHaHvgh1gMQKX40OUvDEBTu8JcmNs=" crossorigin="anonymous"></script>

<style>
.descriptor{
   align-content: center;
    padding: 14px;
    height: auto;
    width: 100%;
    border: 1px solid;
    margin: 0 15px;
}
.descriptor-label{
    font-size: 18px;
    margin: 15px 0 0 15px;
}
.price-label{
    font-size: 22px;
}
.name-label{
    font-size: 33px;
}
</style>
</head>

<body>
    <div class="container-wrapper" >
       <div class="container">
          <div class="row">
             <div class="col-md-6">
                  <div>   
                     <img src="${product.product_image}" alt="image" style="width: 430px; height: 450px; " />
                  </div>
               </div>  
                  
                <div class="col-md-6">
                   <div >
                     <label class="name-label">${product.name}</label><br/>
                     <label class="price-label">가격: ${product.price}원</label>
                  </div>
                  <!-- servlet-context의 resources mapping에 의해 controller로 가지 않고
                      바로 location에 설정한 디렉토리에서 파일을 찾아 정적으로 서비스함-->
                  <div id="map" style="width:100%;height:300px;"></div>
               
               
               <!-- Button -->
                <div style="display:flex; margin-top:15px; width:100%">
                   <a href="javascript:popup()" 
                      class="btn btn-info" style="font-size: 24px; padding: 5px 25px;"> 
                      <i class="far fa-envelope"></i></i> 연락하기
                   </a>
                     <label style="padding:0 0 0 10px"> 키워드 : ${product.keyword}</label>   
                </div>
             </div>
          </div>
       </div> 
         <!-- Descriptor -->  
        <div>
           <div class="descriptor-label">
               <label>상세설명</label>
           </div>
           <div class="descriptor" style="margin-bottom: 200px;">
               <p style=" font-size:16px">${product.description}</p>
              
           </div>
      </div>
   
   </div>

    
</body>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};  

//지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

//주소로 좌표를 검색합니다
geocoder.addressSearch('${product.location}', function(result, status) {

// 정상적으로 검색이 완료됐으면 
 if (status === kakao.maps.services.Status.OK) {

    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

    // 결과값으로 받은 위치를 마커로 표시합니다
    var marker = new kakao.maps.Marker({
        map: map,
        position: coords
    });

    // 인포윈도우로 장소에 대한 설명을 표시합니다
    var infowindow = new kakao.maps.InfoWindow({
        content: '<div style="width:150px;text-align:center;padding:6px 0;font-weight: bold;">해당위치</div>'
    });
    infowindow.open(map, marker);

    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    map.setCenter(coords);
} 
});    
</script>

<!-- 팝업 -->
<script> 
function popup(){
    var url = "/UsMarket/msgSend";
    var name = "popup test";
    var option = "width = 485, height = 455, top = 100, left = 200, location = no"
    
       if('${member}' != '' &&
             '${member}' != null ){
          window.open(url, name, option);
       }else{
          alert('로그인후 이용해주세요.');
       }
          
}
</script>
</html>