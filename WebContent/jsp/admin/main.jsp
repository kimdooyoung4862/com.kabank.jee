<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>DooYoung</title>
	<%@ include file = "../common/head.jsp" %>
	<link rel="stylesheet" href="../../css/admin.css" />
	<script src="../../js/admin/main.js"></script>
</head>

<body>
<header id="admin_header"><h2>관리자 페이지</h2></header>
	<aside id="admin_sidebar" >
		관리자 화면<br />
		<a id="member_mgmt_link">회원관리</a>
	</aside>
<section style="margin-left: 10px;">
<div >
	<table id="admin_table">
		<tr>
			<td  > <button id="admin_btn"> 테이블생성</button> </td>
			<td >테이블생성</td>
			<td >테이블생성</td>
		</tr>
		<tr>
			<td >테이블생성</td>
			<td >테이블생성</td>
			<td >테이블생성</td>
		</tr>
	</table>
	</div>
	</section>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>
