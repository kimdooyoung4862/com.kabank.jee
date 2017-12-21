<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="common/head.jsp" %>
<script src="../js/index.js"></script>
<body>
<div id="wrapper">
<header id="index_header">
	<h1>BIT CAMP SAMPLE PROJECT</h1>
</header>
<section id="index_section">
<article>
	<table id="index_table">
		<tr>
			<td colspan="5">
				<form action="burgerking/main.jsp">
					<table id="index_login_box">
						<tr>
							<td> 
							<input id="index_input_id" type="text" placeholder="ID입력" />
							</td>
							<td rowspan="2">
							<input id="index_input_btn" type="submit" value="로그인"/>
							</td>
						</tr>
						<tr>
							<td>
							<input id="index_input_pass" type="text" placeholder="PASS입력" />
						</tr>
					</table>
				</form>
				<a id="check_admin" href="#">
					<input type="submit" value="관리자"/>
				</a>
				<a id="go_join" href="#">
					<input type="submit" value="회원가입"/>
				</a>
			</td>
		</tr>
	</table>
	</article>
</section>
</div>
<%@ include file="common/footer.jsp"%>
	</body>
</html>