<%@ page language="java" contentType="text/html; charset=UTF-8"%>  

<!DOCTYPE html>
<html>
<head>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./resources/css/mainPage.css">
<title>밀키트</title>
<style>
.jumbotron {
	width:100%;
	height:auto;
	background-image:url(./resources/images/banner-895571.jpg);
	background-repeat:no-repeat;
	background-position:center;
	}

.img{
  max-height: 800px;
  overflow: hidden;
  max-height: initial;
  margin-top: -15%;
}
</style>

</head>

<body>
	<jsp:include page = "menu.jsp"/>
	<div class = "jumbotron" class="image">
		<div class = "container" align="center">
			<h1 class = "display-3 font-weight-bold text-white">MealKit</h1>
		</div>
	</div>
	
	<div id="demo" class="carousel slide" data-ride="carousel">
	  <!-- Indicators -->
	  <ul class="carousel-indicators">
	    <li data-target="#demo" data-slide-to="0" class="active"></li>
	    <li data-target="#demo" data-slide-to="1"></li>
	    <li data-target="#demo" data-slide-to="2"></li>
	  </ul>
	
	  <!-- The slideshow -->
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img class="d-block w-100" src="./resources/images/mealkit01.jpg" alt="1">
	       <div class="carousel-caption">
    		  <h1>밀키트 상품 준비중</h1>
    			<p>자극적인 먹거리 대신 소박하지만 <b>정성이 가득한</b> 한 상을 제공합니다.</p>
 		   	</div>
 		   </div>
	    <div class="carousel-item">
	      <img class="d-block w-100" src="./resources/images/mealkit02.jpg" alt="2">
	       <div class="carousel-caption">
    			<h1>집밥이 좋다!</h1>
    			<p>'집밥'이라는 단어에는 가족을 이어주는 <b>특별한 힘</b>이 있습니다.  </p>
 		   </div>
	    </div>
	    <div class="carousel-item">
	      <img class="d-block w-100" src="./resources/images/mealkit03.jpg" alt="3">
	       <div class="carousel-caption">
    			<h1>누구나 셰프처럼</h1>
    			<p>요리에 즐거움을 더하는 생활습관!</p>
 		   </div>
	   </div>
	  </div>
	</div>
	  <!-- Left and right controls -->
	  <a class="carousel-control-prev" href="#demo" data-slide="prev">
	    <span class="carousel-control-prev-icon"></span>
	  </a>
	  <a class="carousel-control-next" href="#demo" data-slide="next">
	    <span class="carousel-control-next-icon"></span>
	  </a>
	<hr>
	<jsp:include page = "footer.jsp" />
</body>
</html>