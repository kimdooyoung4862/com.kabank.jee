<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kabank.jee.bean.AttendBean" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="attend" class="com.kabank.jee.bean.AttendBean" scope="request"/>
<%
System.out.print("====찍====");
attend.setId(request.getParameter("id"));
attend.setWeek(request.getParameter("week"));
attend.setStatus(request.getParameter("status"));
String sql = "";
Statement stmt = null;
Connection conn = null;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
			"bitcamp","bitcamp");
	stmt = conn.createStatement();
	sql = String.format("INSERT INTO Attend ("
			+"id ,"
			+"week ,"
			+"status "
			+")VALUES('%s','%s','%s')",
				attend.getId(),attend.getWeek(),attend.getStatus()
				);
	stmt.executeUpdate(sql);
}catch(Exception e){e.printStackTrace();}
	pageContext.forward("main.jsp");
%>

