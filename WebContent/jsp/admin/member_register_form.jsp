<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>DooYoung</title>
	<%@ include file = "../common/head.jsp" %>
	<link rel="stylesheet" href="../../css/admin.css" />
	<link rel="stylesheet" href="../../css/admin_member_add.css" />
</head>
<body>
<header id="admin_header"><h2>관리자 페이지</h2></header>
	<aside id="admin_sidebar" >
			관리자 화면<br />
		<a href="#">회원관리</a>
	</aside>
<section id="admin_member_section">
<div >
	<form id="member_register_form"action="member_register.jsp">
	<table id="add_table">
	<tr>
		<td><h1 id="add_h1">ID : <input id="add_input_id" name="id" type="text" /> </h1></td>
	</tr>
	<tr>
		<td><h1 id="add_h1">비밀번호: <input id="add_input_name" name="pass" type="text" /></h1></td>
	</tr>
	<tr>
		<td><h1 id="add_h1">이름: <input id="add_input_name" name="name" type="text" /></h1></td>
	</tr>
	<tr>
		<td><h1 id="add_h1">주민번호 : <input id="add_input_ssn" name="ssn" type="text" /></h1></td>
	</tr>
	<tr>
		<td><h1 id="add_h1">전화번호 : <input id="add_input_phone1" name="phone" type="text" /></h1></td>
	</tr>
	<tr>
		<td><h1 id="add_h1">이메일 : <input id="add_input_email" name="email" type="text" /></h1></td>
	</tr>
	<tr>
		<td><h1 id="add_h1">주소 : <input id="add_input_addr" name="addr" type="text" /></h1></td>
	</tr>
		<tr>
		<td><button id="member_register_btn">추가</button></td>
		</tr>
	</table>
	</form>
	</div>
	</section>
<script src="../../js/admin/member_register_form.js"></script>
<%@ include file="../common/footer.jsp"%>
</body>
</html>