<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.kabank.jee.bean.LottoBean" %>
<%@ page import="org.apache.catalina.connector.Request"%>
<%@ page import="java.util.*" %>

<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp"%>
<body>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<section>
<article>
<%!
	
	public List<LottoBean> createLottos(int count){
		List<LottoBean> list = new ArrayList<>();
		for(int i=0;i<count;i++){
			
			
		}
		return list;
	}

	public int[] createLotto(){
		int[] lotto = new int[6];
		for(int i=0;i<6;i++) {
			int num = (int)(Math.random()* 45 + 1);
			boolean exist = false;
			for(int j=0;j<lotto.length;j++) {
				if(num == lotto[j]) {
					exist = true;
					break;
				}
			}
			if(exist) {
				i--;
				continue;
			}else {
				lotto[i]=num;
				
		}
		Arrays.sort(lotto);
		
		}
		return lotto;
		}
	
	public int countRow(String money){
		int count = 0;
		count = Integer.parseInt(money)/1000;
		return count;
	}
%>

<% 
		
%>
<div>
<%
	int count = countRow(request.getParameter("money"));
	for(LottoBean lot : createLottos(count)){
%>
	<%= lot.getLottoNum() %>
<%	
	}
%>
</div>
</article>
</section>
<aside></aside>
<%@ include file="../common/footer.jsp" %>	
</body>
</html>