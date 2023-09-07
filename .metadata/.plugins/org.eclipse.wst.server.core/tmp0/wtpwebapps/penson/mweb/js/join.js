var numshow = document.getElementById("numshow");
//보안코드, join_step미작성시 강제이동
function url(){
	if(document.location.href.indexOf("join_step2.jsp") > -1){
		
		if(sessionStorage.getItem("ck") != "c"){
			alert("약관확인");
			location.href="./join_step.jsp";
		}
	}
}
url();

function number(){
	var sc = "";
	var sc2 = "";
	for(var f=1; f<=6;f++){
		sc = Math.floor(Math.random() * 10);
		sc2 += sc;
	};
	this.numshow.value = sc2 ;	
}
number();

function on(){
	var f = document.getElementById("f");
	var id = document.getElementById("id");
	var nm = document.getElementById("name");
	var pw = document.getElementById("pass");
	var psok = document.getElementById("passok");
	var em = document.getElementById("email");
	var tel = document.getElementById("tel");
	var num = document.getElementById("num");
	var re = /[0-9]+[a-zA-Z]+|[a-zA-Z]+[0-9]/;	//정규식
	if(id.value == ""){
		alert("아이디를 입력 하셔야 합니다.");
	}else if(re.test(id.value) == false || id.value.length < 6 || id.value.length > 16){
		alert("아이디는 영문과 숫자를 포함하여 6~11자리로 입력해 주셔야 합니다.")
	}else if(nm.value == ""){
		alert("이름를 입력 하셔야 합니다.");
	}else if(pw.value == ""){
		alert("비밀번호를 입력 하셔야 합니다.");
	}else if(re.test(pw.value) == false){
		alert("영문과 숫자를 포함하여 입력해 주세요.")
	}else if(pw.value.length < 6 || pw.value.length > 12){
		alert("비밀번호는 6~12자리로 입력해 주세요.")
	}else if(psok.value == ""){
		alert("비밀번호를 한번 더 입력하여 주세요.");
	}else if(psok.value != pw.value){
		alert("비밀번호가 일치하지 않습니다.");
	}else if(em.value == ""){
		alert("이메일을 입력 하셔야 합니다.");
	}else if(em.value.indexOf("@") == -1){
		alert("이메일을 제대로 입력하여 주세요.");
	}else if(tel.value == ""){
		alert("전화번호를 입력 하셔야 합니다.");
	}else if(tel.value.length < 10 ){
		alert("전화번호는 최소 10~11자리가 입력되어야 합니다.");
	}else if(num.value == ""){
		alert("보안코드를 입력하여 주세요")
	}else if(num.value != this.numshow.value){
		alert("보안코드가 틀렸습니다.")
		f.numshow.value="";
		return number();
	}else{
		alert("가입 완료.")
		f.submit();				
	}
};