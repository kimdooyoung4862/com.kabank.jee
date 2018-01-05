<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.kabank.jee.bean.MemberBean" %>
<%
Statement stmt = null;
Connection conn = null;
ResultSet rs = null;
String sql = "";
List<MemberBean> result = new ArrayList<>();
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
		if(s.equalsIgnoreCase("member")){
			exist =true;
			break;
		}
	}
	if(exist){
		stmt.executeUpdate(
			"CREATE TABLE Member("
			+" id VARCHAR2(20) PRIMARY KEY,"
			+" pass VARCHAR2(20)," 
			+" name VARCHAR2(20),"
			+" ssn VARCHAR2(20),"
			+" phone VARCHAR2(20),"
			+" email VARCHAR2(20)," 
			+" profile VARCHAR2(20),"
			+" addr VARCHAR2(20)"
			+")");
	stmt.executeUpdate(sql);
	}else{
		rs = stmt.executeQuery("SELECT id,pass,name,ssn,phone,email,profile,addr FROM Member");
		while(rs.next()){
			MemberBean m = new MemberBean();
			m.setId(rs.getString("id"));
			m.setName(rs.getString("name"));
			m.setSsn(rs.getString("ssn"));
			m.setPhone(rs.getString("phone"));
			m.setEmail(rs.getString("email"));
			m.setAddr(rs.getString("addr"));
			result.add(m);
		}
	}
}catch(Exception e){
	e.printStackTrace();
}finally{
	if(stmt != null){
		try{stmt.close();}catch(Exception e){e.printStackTrace();}
	}
	if(conn != null){
		try{conn.close();}catch(Exception e){e.printStackTrace();}
	}
}
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>DooYoung</title>
<%@ include file = "../common/head.jsp" %>
	<link rel="stylesheet" href="../../css/admin.css" />
	<script src="../../js/admin/member_list.js"></script>
</head>

<body>
<header id="admin_header"><h2>관리자 페이지</h2></header>
	<aside id="admin_sidebar" >
			관리자 화면<br />
		<a href="#">회원관리</a>
	</aside>
<section id="admin_member_section">
<div >
	<table id="admin_table">
	<tr>
	<th>
	<select id="admin_member_select">
	<option>ID</option>
	<option>이름</option>
	<option>성별</option>
	</select>
	</th>
	<th colspan="5"><input id="admin_member_input" type="text" /></th>
	<th colspan="2"><button id="admin_member_button">검색</button></th>
	</tr>
		<tr id="admin_tr">
			<th>NO</th>
			<th>ID</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>성별</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>주소</th>
		</tr>
		<%
		for(int i=0;i<result.size();i++){
			%>
			<tr id="admin_tr">
			<td >00</td>
			<td ><%=result.get(i).getId()%></td>
			<td ><%=result.get(i).getName()%></td>
			<td><%=result.get(i).getSsn()%></td>
			<td>남자</td>
			<td><%=result.get(i).getPhone()%></td>
			<td><%=result.get(i).getEmail()%></td>
			<td><%=result.get(i).getAddr()%></td>
			</tr>
		 <%
		}
		%>
		<tr>
		<th colspan="8"><button id="add_member_btn">추가</button></th>
		</tr>
	</table>
	</div>
	</section>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>