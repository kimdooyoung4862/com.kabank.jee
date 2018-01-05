/**
 * 
 */
function init() {
	var checkDuplBtn = document.querySelector('#check_dupl_btn');
	var joinConfirmBtn = document.querySelector('#join_confirm_btn');
	checkDuplBtn.addEventListener("click",checkDupl,false);
	joinConfirmBtn.addEventListener("click",joinConfirm,false);
}
function checkDupl(e) {
	alert('중복체크 클릭');
	e.preventDefault();
}

function joinConfirm(e) {
	
	var inputPass = document.querySelector('#input_pass').value;
	sessionStorage.setItem('pass',inputPass);
	var inputId = document.querySelector('#input_id').value;
	alert('아이디 확인'+inputId+'비밀번호 확인'+inputPass);
	sessionStorage.setItem('id',inputId);
;	
}
window.addEventListener("load",init,false);

