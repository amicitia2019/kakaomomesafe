<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ȸ�� ���� ���â</title>
</head>
<body>
	<table border="1" align="center" width="80%">
		<tr align="center" bgcolor="lightgreen">
			<td><b>��ȣ</b></td>
			<td><b>����</b></td>
			<td><b>����</b></td>
			<td><b>�̸�</b></td>
			<td><b>�����</b></td>
		</tr>
		<c:forEach var="member" items="${membersList }">
			<tr align="center">
				<td>${member.articleNo }</td>
				<td>${member.title }</td>
				<td>${member.content }</td>
				<td>${member.name }</td>
				<td>${member.joinDate }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>