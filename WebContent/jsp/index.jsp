<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<title>Index</title>
		<style>
			table{
				width : 80%; height : 760px; margin : 0 auto;
			}
			table tr{
				width : 100%; height : 50px; border: 1px solid blue;
			}
			table tr th{
				width : 100%; height : 30px; border: 1px solid blue;
			}
			table tr td{
				width : 100%; height : 30px; border: 1px solid blue;
			}
			table, tr, td, th{
				border-collapse: collapse;		
			}
		</style>
</head>
	<body>
	<table>
		<tr style="height : 10%">
			<td colspan="5">네비게이션</td>
		</tr>
		<tr style="height : 10%">
			<td style="width : 20%">버거킹</td>
			<td style="width : 20%">카카오뱅크</td>
			<td style="width : 20%">비트캠프</td>
			<td style="width : 20%">SK텔레콤</td>
			<td style="width : 20%">로또</td>
		</tr>
		<tr style="height : 60%">
			<td colspan="5">
					<table style="height : 50px; width : 30px">
						<tr>
							<td style="height : 35%; width : 10%;">
							<input type="text" placeholder="ID입력"/>
							</td>
							<td style="width : 7%;" rowspan="2">
							<input style= "width : 100%; height: 100%;" type="submit" value="로그인"/>
							</td>
						</tr>
						<tr>
							<td style="height : 35%; width : 10%;">
							<input type="text" placeholder="PASS입력" />
						</tr>
					</table>
					<!--
					<div style="width : 300px; height : 200px; margin : 0 auto;">
					<p>
						햄버거 : ￦5,500 <br />
						콜라   : ￦1,500 <br />
						감자   : ￦1,200 <br />
						커피   : ￦900 <br />
					</p>
					<form action="result.jsp">
						<input type="text" name="menu" placeholder="메뉴"/> <br />
						<input type="text" name="count" placeholder="수량"/> <br />
						<input type="hidden" name="hamburger" value="5500" />
						<input type="hidden" name="coke" value="1500" />
						<input type="hidden" name="chip" value="1200" />
						<input type="hidden" name="coffee" value="900" />
						<input type="submit" value="전송"/>
					</form>
					</div>  -->
					
			</td>
		</tr>
	</table>
	</body>
</html>