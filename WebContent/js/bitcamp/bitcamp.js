/**
 * 
 */
window.onload = function(){
	var arr=['burgerking','kakao','bitcamp','skt','lotto'];
	for(var i=0;i<arr.length;i++){
		document.querySelector('#'+arr[i]).addEventListener('click',function(e){location.href = "../"+this.id+"/main.jsp";},false);
	}
	document.querySelector('#burgerking_order_btn').addEventListener('click',function(e){document.querySelector('#order_form').submit();},false);
}
function init(){
	document.querySelector('#attend_result').submit;
}
