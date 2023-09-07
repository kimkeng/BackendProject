<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="subpage">

    <div id="agree" class="member_agree">
    <p>회원가입 약관동의</p>
    <ol class="agree_ol">
    <li ><label><input type="checkbox" class="ckbox" onclick="check(name,false)" id="a1" name="a1"> 이용약관의 동의</label><span class="agree_info">[자세히 보기]</span></li>
    <li><label><input type="checkbox" class="ckbox" onclick="check(name,false)" id="a2" name="a2"> 개인정보 수집의 동의</label><span class="agree_info">[자세히 보기]</span></li>
    <li ><label><input type="checkbox" class="ckbox" onclick="check(name,false)" id="a3" name="a3"> 개인정보 제3자 제공 동의</label><span class="agree_info">[자세히 보기]</span></li>
    <li ><label><input type="checkbox" class="ckbox" onclick="check(name,false)" id="a4" name="a4"> 개인정보 위탁제공 동의</label><span class="agree_info">[자세히 보기]</span></li>
    <li ><label><input type="checkbox" class="ckbox" onclick="check(name,false)" id="a5" name="a5"> 마케팅 활용 동의 (선택)</label><span class="agree_info">[자세히 보기]</span></li>
    <li ><label><input type="checkbox" class="ckbox" onclick="agree(checked)" id="all" name="f"> 위 약관에 모두 동의 합니다.</label></li>
    </ol>
    <div id="g" class="member_agreebtn" onclick="click_all()">기본정보 등록하기</div>
    </div>
 
</section>
<script src="./js/agree.js?v=3"></script>