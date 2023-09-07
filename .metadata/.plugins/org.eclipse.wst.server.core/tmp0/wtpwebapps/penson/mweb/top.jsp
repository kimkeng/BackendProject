<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id ="";
String nm ="";
String tel ="";
String email ="";
try{
	id = session.getAttribute("userid").toString();
	nm = session.getAttribute("username").toString();
//	tel = session.getAttribute("tel").toString();
//	email = session.getAttribute("email").toString();
}catch(Exception e){
	
} 
%>

<!-- 상단 시작 -->
<header>
<ul class="top_menu">
    <li><img src="./img/menu.svg"></li>
    <li onclick="location.href='./index.jsp';"><img src="./img/header_logo.png"></li>
    <%if(nm==""){ %>
    <li id="userhtml" onclick="login_pop();"><img src="./img/login.svg"></li>
    <%}else if(nm != ""){ %>
    <li id="userhtml" style="width:40%;"><%=nm%> 님<a href='./logout.jsp'>[로그아웃]</a></li>
    <%} %>
    
</ul>
</header>
<form  id="loginform" method="post" onsubmit="return login()" action="./m_loginok.do" enctype="application/x-www-form-urlencoded" >
<aside class="popup" id="popup" style="display:none;">
	<div class="login">
		<span class="close" onclick="pop_close();">X</span>
		<p>MEMBER-LOGIN</p>
		<ol>
		<li><input type="text" id="login_id" name="login_id"  class="login_input" placeholder="아이디를 입력하세요"></li>
		<li><input type="password" id="login_pw" name="login_pw"  class="login_input" placeholder="패스워드를 입력하세요"></li>
		<li><label><input type="checkbox" id="login_ck" onclick="id_save()" class="login_check"> 자동로그인</label></li>
		<li><input type="submit" id="saveid"  value="로그인" class="login_btn"></li>
		<li class="login_info">
		<span onclick="page_location(1)">아이디 찾기</span>
		<span onclick="page_location(2)">회원가입</span>
		</li>
		</ol>
	</div>
</aside>
</form>
<script>

var storage = window.localStorage.getItem("login_id");
loginform.login_id.value = storage;

//아이디 저장 기능
function id_save(){
	var ck = document.getElementById("login_ck");
	if(loginform.login_id.value==""){
		alert("아이디를 입력하셔야만 해당 기능을 사용할 수 있습니다.")
		ck.checked = false;
	}else{
		if(ck.checked == true){
			window.localStorage.setItem("login",loginform.login_id.value);			
		}else{
			window.localStorage.setItem("login","");
		}
	}
}

//로그인
function login() {
	if(loginform.login_id.value==""){
		alert("아이디를 입력하세요");
		loginform.login_id.focus();
		return false;
	}else if(loginform.login_pw.value==""){
		alert("패스워드를 입력하세요");
		loginform.login_pw.focus();
		return false;
	}else{
		return;
	}
}

</script>