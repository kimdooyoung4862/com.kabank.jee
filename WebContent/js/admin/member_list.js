function init(){
	document.querySelector('#add_member_btn').addEventListener('click',alertMessage,false);
}
function alertMessage(){
	location.href = "member_register_form.jsp";
}
window.addEventListener("load",init,false);