<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="subpage">
    <div class="member_agree">
    <p>회원 기본 정보입력</p>
    <form id="f" method="post" action="./joinok.do">
    <ol class="join_ol">
    <li><input name="id"  id="id" type="text" class="join_input1"  placeholder="아이디 (영문/숫자 6~16자리)" maxlength="16"></li>
    <li><input name="name"  id="name" type="text" class="join_input1" placeholder="이름 (홍길동)" maxlength="10"></li>
    <li><input name="pass"  id="pass" type="password" class="join_input1" placeholder="비밀번호 (영문/숫자 6~12자리)" maxlength="12"></li>
    <li><input name="passok"  id="passok" type="password" class="join_input1" placeholder="동일한 패스워드를 입력하세요" maxlength="12"></li>
    <li><input name="email"  id="email" type="email" class="join_input1" placeholder="이메일을 입력하세요" maxlength="35"></li>
    <li><input name="tel"  id="tel" type="tel" class="join_input1" placeholder="연락처 ('-'는 미입력)" maxlength="11"></li>
    <li class="security">
    보안코드 : <input  id="numshow" type="text" class="join_input2 bgcolor" maxlength="6" readonly="readonly">
    <input type="number" name="num" id="num" class="join_input2" placeholder="보안코드 6자리 입력" maxlength="6">
    </li>
    </ol>
    <input type="button" onclick="on()" class="member_agreebtn" value="회원가입">
    </form>
    </div>
</section>
<script src="./js/join.js?v=1"></script>