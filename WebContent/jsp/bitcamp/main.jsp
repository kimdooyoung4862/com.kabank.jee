<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.kabank.jee.bean.AttendBean" %>
<%
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String sql = "";
List<AttendBean> result = new ArrayList<>();
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
			"bitcamp","bitcamp");
	stmt = conn.createStatement();
	sql = "SELECT * FROM tab";
	rs = stmt.executeQuery(sql);
	List<String> list = new ArrayList<>();
	while(rs.next()){
		String temp = rs.getString("TNAME");
		list.add(temp);
	}
	boolean exist = false;
	for(String s : list){
		if(s.equalsIgnoreCase("attend")){
			exist = true;
			break;
		}
	}
	if(!exist){
		stmt.executeUpdate(
			"CREATE TABLE Attend("
			+"id varchar2(20) PRIMARY KEY,"
			+"week varchar2(10),"
			+"status varchar2(10)"
			+")");
	stmt.executeUpdate(sql);
	}else{
	rs = stmt.executeQuery("SELECT id,week,status,result FROM Attend");
	while(rs.next()){
		AttendBean a = new AttendBean();
		a.setId(rs.getString("id"));
		a.setWeek(rs.getString("week"));
		a.setStatus(rs.getString("status"));
		result.add(a);
		}
	}
}catch(Exception e){e.printStackTrace();}
%>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp"%>
<link rel="stylesheet" href="../../css/bitcamp.css" />
<body>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<section>
<article>
	<h1>비트캠프 메인</h1>
</article>
</section>
	<form action="result.jsp">
	<table id="bit_main">
			<tr>
				<td>상 태</td>
				<td>월</td>
				<td>화</td>
				<td>수</td>
				<td>목</td>
				<td>금</td>
			</tr>
			<tr>
				<td>결 석</td>
				<td><input type="radio" name="monday" value="absent" checked="checked" /></td>
				<td><input type="radio" name="tuesday" value="absent" checked="checked" /></td>
				<td><input type="radio" name="wednesday" value="absent" checked="checked" /></td>
				<td><input type="radio" name="thursday" value="absent" checked="checked" /></td>
				<td><input type="radio" name="friday" value="absent" checked="checked" /></td>
			</tr>
			<tr>
				<td>지 각</td>
				<td><input type="radio" name="monday" value="late" /></td>
				<td><input type="radio" name="tuesday" value="late" /></td>
				<td><input type="radio" name="wednesday" value="late" /></td>
				<td><input type="radio" name="thursday" value="late" /></td>
				<td><input type="radio" name="friday" value="late" /></td>
			</tr>
			<tr>
				<td>조 퇴</td>
				<td><input type="radio" name="monday" value="early_leave" /></td>
				<td><input type="radio" name="tuesday" value="early_leave" /></td>
				<td><input type="radio" name="wednesday" value="early_leave" /></td>
				<td><input type="radio" name="thursday" value="early_leave" /></td>
				<td><input type="radio" name="friday" value="early_leave" /></td>
			</tr>
			<tr>
				<td>출 석</td>
				<td><input type="radio" name="monday" value="attend"/></td>
				<td><input type="radio" name="tuesday" value="attend" /></td>
				<td><input type="radio" name="wednesday" value="attend" /></td>
				<td><input type="radio" name="thursday" value="attend" /></td>
				<td><input type="radio" name="friday" value="attend" /></td>
			</tr>
			<tr>
				<td>결과</td>
				<td><input type="text" name="result" /></td>
				<td><input type="text" name="result" /></td>
				<td><input type="text" name="result" /></td>
				<td><input type="text" name="result" /></td>
				<td><input type="text" name="result" /></td>
			</tr>
			<tr>
				<td colspan="6">
					<input type="hidden" name="id" value="skyfor1004" />
					<button id="attend_result">확인</button>
				</td>
			</tr>
	</table>
	</form>
<%@ include file="../common/footer.jsp" %>	
	</body>
	<script src="../../js/bitcamp/bitcamp.js"></script>
</html>