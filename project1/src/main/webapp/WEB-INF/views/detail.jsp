<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/detail.css">
<script type="text/javascript">
	function edit(){
		if(confirm("수정하시겠습니까?")){
			location.href="./edit?bno=${dto.bno }"			
		}		
	}
	
	function del(){
		let chk = confirm("삭제하시겠습니까?");	// 참 거짓으로 나옵니다.
		// alert(chk);
		if(chk){
			location.href="./delete?bno=${dto.bno }";
		}
	}
</script>
</head>

<body>
<%@ include file = "menu.jsp" %>
<h1>상세보기</h1>
	<div class= "detail-content">
		<div class="title">${dto.bno }.  ${dto.btitle }
			<div class="upNde">
				<img alt="" src="./img/update.png" onclick="edit()">&nbsp;<img alt="" src="./img/delete.png" onclick="del()">
			</div>	
		</div>
		<div class="name">${dto.bwrite }</div>
		<div class="content">${dto.bcontent }</div>
		<div class="under-bar">
			<div class="date">${dto.bdate }</div>
			<div class="like">${dto.blike }</div>
		</div>
			<div class="ip">${dto.bip }</div>
	</div>
	
	
</body>
</html>