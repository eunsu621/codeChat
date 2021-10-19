<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script language = "JavaScript">
//head 태그 안에 스크립트 선언
        function setCookie( name, value, expiredays ) {
            var todayDate = new Date();
            todayDate.setDate( todayDate.getDate() + expiredays ); 			
            document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
        }
        function closePop() {
            if ( document.pop_form.chkbox.checked ){
                setCookie( "maindiv", "done" , 1 );			//저장될 쿠키명, 쿠키 value값, 기간(1:하루, 7:일주일)
            }
            document.getElementById('layer_popup').style.visibility = "hidden";
        }

</script>



<style>
font-family: SF Pro KR, SF Pro Display, SF Pro Icons, AOS Icons, Apple Gothic, HY Gulim, MalgunGothic, HY Dotum, Lexi Gulim, Helvetica Neue, Helvetica, Arial, sans-serif;
.layerPopup img{
margin-bottom : 20px;}
.layerPopup:before {display:block; content:""; position:fixed; left:0; top:0; width:100%; height:100%; background:rgba(0,0,0,.5); z-index:9000}
.layerPopup .layerBox {    z-index:10000;   
position:fixed; left:25%; top:48%; transform:translate(-50%, -50%); padding:30px; background:#fff; border-radius:6px; }
.layerPopup .layerBox .title {margin-bottom:10px; padding-bottom:10px; font-weight:600; border-bottom:1px solid #d9d9d9; height : 50px;}
.layerPopup .layerBox .btnTodayHide {
font-size:14px; font-weight:600; color:black; 
float: left;text-decoration:none;width: 150px; 
height : 30px;line-height:30px;border:black solid 1px; text-align : center;text-decoration:none;
}
.layerPopup div{
	display : inline;
}
.layerPopup form{
	margin-top : 5px;
	font-size:14px; font-weight:600;
	weight: 100%;
	height : 30px;
	line-height:30px
}
.layerPopup #close {
font-size:14px; font-weight:600; width: 40px; height : 30px;color:black; float: right; line-height:30px; text-align : center;text-decoration:underline;
}
.layerPopup a{
	text-decoration : none;
	color : black;width: 50px;height : 40px;
}
</style>



<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="layerPopup" id="layer_popup" style="visibility: visible;">
    <div class="layerBox">
        <h4 class="title">알림</h4>
        <div class="cont">
            <p>
            <a href = "https://recruit.nhn.com/ent/index" target="_blank"><img src="images/popup.jpg" width=350 height=500 alt="event page"></a>
		
            </p>
        </div>
          <form name="pop_form">
        <div id="check" ><input type="checkbox" name="chkbox" value="checkbox" id="chkbox" >
        	<label for="chkbox"><a>&nbsp;오늘 하루동안 보지 않기</a></label>
        </div>
		<div id="close" ><a href = "javascript:closePop();" >닫기</a></div>    
		</form>
	</div>
</div>
<script language="Javascript">
    cookiedata = document.cookie;   
    if ( cookiedata.indexOf("maindiv=done") <  0 ){     
        document.getElementById('layer_popup').style.display = "block";
    }
    else {
        document.getElementById('layer_popup').style.display = "none";
    }
</script> 

</body>
</html>