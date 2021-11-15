<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*" %>    

<!DOCTYPE html>
<html>
<head>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>상품 목록</title>
<style>
	#box1 {
		height: 600px;
		background-image: url("resources/images/foodlist.jpg");
		background-size: cover;
		
	}
	
	.con1 {
		margin-top: 20px;
		font-family: 'Noto Sans KR', sans-serif;
		color:white;
	}
	
</style>
</head>

<body>
	<jsp:include page = "menu.jsp"/>
	
	<div class = "jumbotron" id="box1" >
		<div class = "container con1">
			<h1 class = "text-center"><b>정성스러운 식사</b></h1>
			<p class = "text-center">맛과 정성이 가득한 음식을 준비했습니다.</p>
		</div>
	</div>
	
	<div class = "container">
		<div class = "row" align= "center">
			<%@ include file = "dbconn.jsp" %>
		<%
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "select * from food";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			String link, p_id;
			
			while (rs.next()) {
				p_id = rs.getString("p_id");
				link = "./product.jsp?p_id="+"'"+p_id+"'";
		%>
		<div class ="col-lg-3">
			<img src = "./resources/images/Food/<%=rs.getString("p_fileName") %>" style = "width: 200px; height: 220px">
			<h4><%= rs.getString("p_name") %></h4>
			<p><%= rs.getString("p_unitPrice") %>원
			<P> <a href = "<%=link %>" class = "btn btn-info" role = "button">드루와 <i class="fab fa-angellist"></i> </a>
		</div>
		<%
			}
		
 		%>
<%		
	if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close(); 
%> 	
		</div>
		<hr>
	</div>
	<jsp:include page = "footer.jsp" />
</body>
</html>