<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>       
<%@ page errorPage = "exceptionNoProductId.jsp" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>상품 상세 정보</title>
<script type = "text/javascript">
	function addToCart() {
		if(confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page = "menu.jsp" />
	<div class = "jumbotron">
		<div class = "container" align= "center">
			<h1 class = "display-3">상품 정보</h1>
		</div>
	</div>
	<%@ include file = "dbconn.jsp" %>
	<%
		String id = request.getParameter("p_id");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from food where p_id="+id;
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
	%>
	
	<div class = "container">
		<div class = "row">
			<div class = "col-md-4">
				<img src = "./resources/images/Food/<%=rs.getString("p_fileName") %>" style = "width: 200px; height: 220px">
			</div>
			<div class = "col-md-4">
				<h3><%= rs.getString("p_name") %></h3>
				<p><%=rs.getString("p_description")%>
				<p> <b>상품 아이디 : </b> <span class = "badge badge-danger" style="background-color: red;">
					<%= rs.getString("p_id")%></span>
				<p> <b>분류</b> : <%= rs.getString("p_category") %>
				<p> <b>재고 수</b> : <%= rs.getString("p_unitsInStock") %>
				<h4> <%= rs.getInt("p_unitPrice") %>원</h4>
				<p> <form name = "addForm" action = "./addCart.jsp?id=<%= rs.getString("p_id") %>" method = "post">
					<a href = "#" class = "btn btn-info" onclick = "addToCart()">상품 주문 &raquo;</a>
					<a href = "./cart.jsp" class = "btn btn-warning"> 장바구니 &raquo;</a>
					<a href = "./products.jsp" class = "btn btn-secondary">상품 목록
					&raquo;</a>
				</form>
			</div>	
		</div>
		<hr>
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
	<jsp:include page = "footer.jsp" />
</body>
</html>