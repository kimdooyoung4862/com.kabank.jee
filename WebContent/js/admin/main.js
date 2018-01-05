function init(){
	document.querySelector('#admin_btn').addEventListener("click",createTable,false);
}
function createTable(){
	location.href = "member_list.jsp";
}
window.addEventListener("load",init,false);