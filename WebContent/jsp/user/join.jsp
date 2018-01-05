<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.kabank.jee.bean.MemberBean"%>
<jsp:useBean id="member" class="com.kabank.jee.bean.MemberBean" scope="request"/>
<%
String sql = "";
Statement stmt = null;
Connection conn = null;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
			"bitcamp","bitcamp");
	stmt = conn.createStatement();
	member.setId(request.getParameter("input_id"));
	member.setPass(request.getParameter("input_pass"));
	member.setName(request.getParameter("input_name"));
	member.setSsn(request.getParameter("input_ssn"));
	member.setEmail(request.getParameter("input_email"));
	member.setPhone(request.getParameter("input_phone"));
	member.setAddr(request.getParameter("input_addr"));
		sql = String.format("INSERT INTO Member ("
		+"id ,"
		+"pass ,"
		+"name ,"
		+"ssn ,"
		+"email ,"
		+"phone ,"
		+"addr "
		+")VALUES('%s','%s','%s','%s','%s','%s','%s')",
			member.getId(),member.getPass(),member.getName(),member.getSsn(),member.getEmail(),member.getPhone(),member.getAddr()
		);
		stmt.executeUpdate(sql);
		pageContext.forward("../index.jsp");
		}catch(Exception e){e.printStackTrace();}
%>
