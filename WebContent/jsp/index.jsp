<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>JSP</title>
	<link rel="stylesheet" href="../css/common.css" />
	<link rel="stylesheet" href="../css/index.css" />

	<script src="../js/index.js"></script>
</head>
<body>
<header id="index_header">
	<h1>BIT CAMP SAMPLE PROJECT</h1>
</header>

<section>
<article>
<div   id="wrapper">
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
				<a id="go_admin_link" href="#">
					관리자
				</a>
				<a id="go_join_link" href="#">
					회원가입
				</a>
			</td>
		</tr>
	</table>
</div>
	</article>
</section>
<%@ include file="common/footer.jsp"%>
	</body>
	<script src="../js/index.js"></script>
</html>