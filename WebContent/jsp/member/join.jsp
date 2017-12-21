<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp"%>
<body>
<header id="index_header">
	<h1>회원가입</h1>
</header>
<section>
<article>
	<table border="2"; style="margin: 0 auto">
	<tr>
	<td>아이디</td>
	<td>
		<input style="margin-right: 88px" type="text"/>
		<input type="button" value="중복확인"/>
	</td>
	</tr>
	
	<tr>
	<td>이름</td>
	<td><input  style="margin-right: 150px"  type="text" /></td>
	</tr>
	
	<tr>
	<td>암호</td>
	<td><input style="margin-right: 150px" type="password" /></td>
	</tr>
	
	<tr>
	<td>암호확인</td>
	<td><input style="margin-right: 150px" type="password" /></td>
	</tr>
	
	<tr>
	<td>이메일</td>
	<td><input style="margin-right: 41px" type="text" />@<select>
	<option>naver.com</option>
	<option>daum.com</option>
	<option>google.com</option>
	</select>
	</td>
	</tr>
	
	<tr>
	<td>주민번호</td>
	<td><input type="text" />-<input type="number" placeholder="" min="1" max="9"/></td>
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
	- <input type="text" />- <input type="text" />
	</td>
	</tr>
	
	<tr>
	<td>주소</td>
	<td>
	<input type="button" value="주소검색"/>
	<input type="text" />
	</td>
	</tr>
	
	</table>
	<form action="../burgerking/main.jsp">
		<input style="width: 160px; height: 30px" type="submit" value="확인"/>
	</form>
	<form action="../index.jsp">
		<input style="width: 160px; height: 30px" type="submit" value="취소"/>
	</form>
</article>
</section>
<aside></aside>
<%@ include file="../common/footer.jsp" %>	
</body>
</html>