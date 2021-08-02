<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
	request.setCharacterEncoding("utf-8");
%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MOME Community</title>
	<style type="text/css">
		.class1 {text-decoration: none;}
		.class2 {text-align: center; font-size: 30px;}
		.no-line {text-decoration: none;}
		.sel-page {text-decoration: none; color: red;}
	</style>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/board.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/board_menu.css">



	</script>
</head>
<body>
	<section class="notice">
		<div class="page-title">
		    <div class="container" OnClick="location.href ='${pageContext.request.contextPath}/board/listArticles.do' " style="cursor:pointer;">
		        <h3>MOME Community</h3>
		    </div>
		</div>


	<!-- board list area -->
		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr style="font-size: 16px;">
							<th scope="col" class="th-num">번호</th>
							<th scope="col" class="th-title">제목</th>
							<th scope="col" class="th-writer">작성자</th>
							<th scope="col" class="th-date">등록일</th>
						</tr>
					</thead>
					<c:choose>
						<c:when test="${empty searchArticleList}">
							<tr height="10">
								<td colspan="4">
									<p align="center">
										<b><span style="font-size: 15pt;">글이 없습니다.</span></b>
									</p>
								</td>
							</tr>
						</c:when>
						<c:when test="${!empty searchArticleList  }">
							<c:forEach var="article" items="${searchArticleList }" varStatus="articleNum">			<!--varStatus :반복상태변수이름 --속성들 index, count, first, last  -->

							</c:forEach>
						</c:when>
					</c:choose>
				</table>

			</div>
		</div>
	</section>
</body>
</html>
