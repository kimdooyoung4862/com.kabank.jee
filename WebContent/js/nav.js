/**
 * 
 */
function goburgerking(){
	location.href = "../burgerking/main.jsp";
}
function gobitcamp(){
	location.href = "../bitcamp/main.jsp";
}
function gokakao(){
	location.href = "../kakao/main.jsp";
}
function golotto(){
	location.href = "../lotto/main.jsp";
}
function goskt(){
	location.href = "../skt/main.jsp";
}
function clickMe(){
	document.querySelector('#go_burgerking').onclick = goburgerking;
	document.querySelector('#go_bitcamp').onclick = gobitcamp;
	document.querySelector('#go_kakao').onclick = gokakao;
	document.querySelector('#go_lotto').onclick = golotto;
	document.querySelector('#go_skt').onclick = goskt;
}
window.onload = clickMe;