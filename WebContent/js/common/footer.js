/**
 * 
 */
function gobitcampPage(){
	location.href = "http://bitcamp.co.kr/index.php?main_page=home";
}
function clickMe(){
	document.querySelector('#go_bitcampPage').onclick = gobitcampPage;
}
window.onload = clickMe;