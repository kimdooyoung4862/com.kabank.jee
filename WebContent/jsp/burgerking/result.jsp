<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.kabank.jee.bean.BurgerkingBean" %>

<jsp:useBean id="hamburger" class="com.kabank.jee.bean.BurgerkingBean" scope="request"/>
<jsp:useBean id="coke" class="com.kabank.jee.bean.BurgerkingBean" scope="request"/>
<jsp:useBean id="chip" class="com.kabank.jee.bean.BurgerkingBean" scope="request"/>
<jsp:useBean id="coffee" class="com.kabank.jee.bean.BurgerkingBean" scope="request"/>
<jsp:useBean id="salad" class="com.kabank.jee.bean.BurgerkingBean" scope="request"/>
<jsp:useBean id="bagel" class="com.kabank.jee.bean.BurgerkingBean" scope="request"/>

<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp"%>
<body>
<div id="wrapper">
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<section>
<article>
<%
	String hamburgerPrice = request.getParameter("hamburger");
	String cokePrice = request.getParameter("coke");
	String chipPrice = request.getParameter("chip");
	String coffeePrice = request.getParameter("coffee");
	String saladPrice = request.getParameter("salad");
	String bagelPrice = request.getParameter("bagel");
	
	String hamburgerCount = request.getParameter("hamburger-count");
	String cokeCount = request.getParameter("coke-count");
	String chipCount = request.getParameter("chip-count");
	String coffeeCount = request.getParameter("coffee-count");
	String saladCount = request.getParameter("salad-count");
	String bagelCount = request.getParameter("bagel-count");
	
	String place = request.getParameter("place");
	
	
	hamburger.setMenu("햄버거");
	hamburger.setPrice(hamburgerPrice);
	hamburger.setCount(hamburgerCount);
	
	coke.setMenu("콜라");
	coke.setPrice(cokePrice);
	coke.setCount(cokeCount);
	
	chip.setMenu("감자");
	chip.setPrice(chipPrice);
	chip.setCount(chipCount);
	
	coffee.setMenu("커피");
	coffee.setPrice(coffeePrice);
	coffee.setCount(coffeeCount);
	
	salad.setMenu("샐러드");
	salad.setPrice(saladPrice);
	salad.setCount(saladCount);
	
	bagel.setMenu("베이글");
	bagel.setPrice(bagelPrice);
	bagel.setCount(bagelCount);
	
	List<BurgerkingBean> list = new ArrayList<>();
	list.add(hamburger);
	list.add(coke);
	list.add(chip);
	list.add(coffee);
	list.add(salad);
	list.add(bagel);
	
		int total = 0;
%>
		<%= place %> <br />
<%	
	for(BurgerkingBean b : list){
		if(b.getCount()!=""){
			total += Integer.parseInt(b.getCount())*Integer.parseInt(b.getPrice());

		
%>	
			주문한품목<%=b%> <br />
<%
		}
	}		
%>

			
			---------------------------- <br />
			총 계산금액<%= total%>원
					<br />
				</article>
			</section>
		<aside></aside>
	</div>
<%@ include file="../common/footer.jsp" %>
	</body>
	<script src="../../js/burgerking/burgerking.js"></script>
</html>