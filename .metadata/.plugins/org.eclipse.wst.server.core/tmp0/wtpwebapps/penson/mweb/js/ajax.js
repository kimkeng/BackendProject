/* json 파일로드 외부함수로 출력*/
/*
샘플링
   <li>
       <div>
           <span><img id="a_wkimg" src="./img/hotel_01.jpg"></span>
           <span id="a_wktitle">[강원 평창군] 한화리조트 평창</span>
           <span id="a_wkpd">165,600원</span>
       </div>
   </li>
*/


var data;
var array;
window.onload = function abc(){
	function win(){
		if(window.XMLHttpRequest){
			return new XMLHttpRequest();
		}
	}
	
	function bbb(){
		if(data.readyState==XMLHttpRequest.DONE && data.status==200){
			array = JSON.parse(this.response);
			var w=0;
			var htmlcode = "";
			var ids = document.getElementById("product");
			while(w < 6){
				var img = array["penson_product"][w]["a_wkimg"];
				var pname = array["penson_product"][w]["a_wktitle"];
				var pmoney = array["penson_product"][w]["a_wkpd"];
				htmlcode += `
				<li onclick="resv('`+pname+`','`+pmoney+`')">
				  <div>
				      <span><img src= "`+img+`"></span>
				      <span>`+pname+`</span>
				      <span>`+Number(pmoney).toLocaleString()+`원</span>
				  </div>
				</li>		
				`;
				w++;
			}
			ids.innerHTML = htmlcode;
		}else if (data.status==404 || data.status ==405){
			console.log("해당 파일 오류");
		}
	}
	
	data = win();
	data.onreadystatechange = bbb;
	data.open("get","./data.json",true);
	data.send();
}
function resv(nm,money){   /* encodeURI 안쓰면 특수기호 때문에 인식못해서 에러남 */
	location.href="./m_reservation.jsp?pnm="+encodeURI(nm)+"&pmoney="+money;
}