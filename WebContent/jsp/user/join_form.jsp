<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp"%>
<link rel="stylesheet" href="../../css/join.css" />
<body>
<header id="index_header">
	<h1>회원가입</h1>
</header>
<section>
<article>
	<form id="join_form" name="join_form" action="join.jsp">
	<table style="margin: 0 auto; border-style: solid;">
	<tr>
	<td>아이디</td>
	<td>
		<input id="input_id" name="input_id"style="margin-right: 88px" type="text"/>
		<button id="check_dupl_btn" name="check_dupl_btn">중복확인</button>
	</td>
	</tr>
	
	<tr>
	<td>이름</td>
	<td><input name="input_name" style="margin-right: 150px"  type="text"/></td>
	</tr>
	
	<tr>
	<td>암호</td>
	<td><input id="input_pass" name="input_pass" style="margin-right: 150px" type="password"/></td>
	</tr>
	
	<tr>
	<td>암호확인</td>
	<td><input id="input_pass" name="input_pass" style="margin-right: 150px" type="password"/></td>
	</tr>
	
	<tr>
	<td>이메일</td>
	<td><input style="width: 90px" name="input_email" type="email" />@<input style="margin-right: 27px; width: 90px" type="text"/><select>
	<option>naver.com</option>
	<option>daum.com</option>
	<option>google.com</option>
	</select>
	</td>
	</tr>
	
	<tr>
	<td>가입일</td>
	<td><input type="date" />
	</tr>
	
	<tr>
	<td>주민번호</td>
	<td><input name="input_ssn" type="text"/>-<input style="margin-right: 90px; width: 50px" type="text"/></td>
	</tr>
	
	<tr>
	<td>핸드폰번호</td>
	<td>
	<input type="radio" name="phone" />SKT
	<input type="radio" name="phone" />KT
	<input type="radio" name="phone" />LG
	<br />
	<select>
	<option>010</option>
	</select>
	- <input name="input_phone" pattern="[0-9]{4}" style="width: 50px" type="text"/>-
	<input pattern="[0-9]{4}" style="width: 50px" type="text"/>
	</td>
	</tr>
	
	<tr>
	<td>주소</td>
	<td>
		<input name="addr" type="button" value="주소검색"/>
		<input type="text" /><br />
	상세주소 <input name="input_addr" style="width: 300px" type="text" />
	</td>
	</tr>
	
	<tr>
		<td  colspan="2" style="text-align: center;">
		<button id="join_confirm_btn"style="width: 160px; height: 30px">확 인</button>
	    <button style="width: 160px; height: 30px">취 소</button>
	</td>
	</tr>
	</table>
	</form>
</article>
</section>
<aside></aside>
<%@ include file="../common/footer.jsp" %>	
</body>
<script src="../../js/user/join.js"></script>
</html>