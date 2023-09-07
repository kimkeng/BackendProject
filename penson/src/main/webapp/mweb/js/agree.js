


function check(name,sum){	//해당 오브젝트의 name값
	var nm = document.getElementsByName(name);	//name으로 확인하는 파트
	if(nm==false){	//동의안함을 무조건 클릭시 전체동의 해제
		document.getElementById("all").checked = false;
			
	}else{	//각각의 서비스약관에 대한 동의함 클릭시 반복문으로 모두 동의함이 되었는지 확인
		var w = 1;
		var count = 0;
		while(w<=5){
			if(document.getElementById("a"+w).checked == true){
				count++;
			}
			w++;
		}
		if(count == 5){	//모두 동의함일 경우 전체동의 부분에 체크되도록 함
			document.getElementById("all").checked = true;
		}else{
			document.getElementById("all").checked = false;
			
		}
		
	}  
}
function agree(e){
	var w = 1;
	while(w <= 5){
		document.getElementById("a"+w).checked = e;
		w++;
	}
}
function click_all(){
	var count = 0;
	for(var i=1; i<=5; i++){
		if(document.getElementById("a"+i).checked == true){
			count++;
		}
	}
	if(a1.checked == true && a2.checked == true && a3.checked == true && a4.checked == true){
		sessionStorage.setItem("ck","c");
		location.href="./join_step2.jsp";
	}else{
		alert("필수 약관을 모두 동의해 주십시오.");
	}
}