<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터 추가 화면</title>
<script src="/ChartBoard/script/jquery-1.12.4.js"></script>
<script src="/ChartBoard/script/jquery-ui.js"></script>
</head>

<style>
body{
	font-size: 9pt;
}
button{
	font-size: 9pt;
}
table {
	width: 600px;
	border-collapse: collapse;
}
th,td {
	border: 1px solid #cccccc;
	padding: 3px;
}
</style>

<script>

function fn_submit() {
	if( $.trim($("#ym").val()) == "" ) {
		alert("날짜를 입력해주세요.");
		$("#ym").focus();
		return false;
	}
	$("#ym").val( $.trim($("#ym").val()) );
	
	if( $.trim($("#admi_nm").val()) == "" ) {
		alert("동네명을 입력해주세요.");
		$("#admi_nm").focus();
		return false;
	}
	$("#ym").val( $.trim($("#ym").val()) );
	
	if( $.trim($("#sensor_nm").val()) == "" ) {
		alert("센서명을 입력해주세요.");
		$("#sensor_nm").focus();
		return false;
	}
	$("#sensor_nm").val( $.trim($("#sensor_nm").val()) );
	
	if( $.trim($("#avrg_tp").val()) == "" ) {
		alert("온도를 입력해주세요.");
		$("#avrg_tp").focus();
		return false;
	}
	$("#avrg_tp").val( $.trim($("#avrg_tp").val()) );
	
	if( $.trim($("#avrg_hd").val()) == "" ) {
		alert("습도를 입력해주세요.");
		$("#avrg_hd").focus();
		return false;
	}
	$("#avrg_hd").val( $.trim($("#avrg_hd").val()) );
	
	if( $.trim($("#avrg_ulfptc_dnsty").val()) == "" ) {
		alert("초미세먼지 수치를 입력해주세요.");
		$("#avrg_ulfptc_dnsty").focus();
		return false;
	}
	$("#avrg_ulfptc_dnsty").val( $.trim($("#avrg_ulfptc_dnsty").val()) );
	
	if( $.trim($("#avrg_minudust_dnsty").val()) == "" ) {
		alert("미세먼지 수치를 입력해주세요.");
		$("#avrg_minudust_dnsty").focus();
		return false;
	}
	$("#avrg_minudust_dnsty").val( $.trim($("#avrg_minudust_dnsty").val()) );
	
	if( $.trim($("#avrg_ulvry_idex").val()) == "" ) {
		alert("자외선을 입력해주세요.");
		$("#avrg_ulvry_idex").focus();
		return false;
	}
	$("#avrg_ulvry_idex").val( $.trim($("#avrg_ulvry_idex").val()) );
	
	var formData = $("#frm").serialize();
	
	// ajax : 비동기 전송방식의 기능을 가지고 있는 jquery의 함수
	$.ajax({
		/* 전송 전 세팅 */
		type:"POST",
		data:formData,
		url:"boardWriteSave.do",
		dataType:"text",	//리턴 타입
		
		/* 전송 후 세팅 */
		success: function(result) { // controller -> "ok","fail"
			if(result == "ok"){
				alert("저장완료");
				location="boardList.do";
			}else {
				alert("저장실패");
			}
		},
		error: function(){	//	장애발생
			alert("오류발생");
		}		
	});
	
	
}

</script>

<body>
<form id="frm">
<table>
	<caption>데이터 등록</caption>
	<tr>
		<th width="20%"><label for="ym">날짜</label></th>
		<td width="80%"><input type="text" name="ym" placeholder="yyyymm" id="ym"></td>		
	</tr>
	<tr>
		<th><label for="admi_nm">동네명</label></th>
		<td><input type="text" name="admi_nm" id="admi_nm"></td>		
	</tr>
	<tr>
		<th><label for="sensor_nm">센서명</label></th>
		<td><input type="text" name="sensor_nm" id="sensor_nm"></td>		
	</tr>
	<tr>
		<th><label for="avrg_tp">온도</label></th>
		<td><input type="text" name="avrg_tp" id="avrg_tp"></td>		
	</tr>
	<tr>
		<th><label for="avrg_hd">습도</label></th>
		<td><input type="text" name="avrg_hd" id="avrg_hd"></td>
	</tr>
	<tr>
		<th><label for="avrg_ulfptc_dnsty">초미세먼지</label></th>
		<td><input type="text" name="avrg_ulfptc_dnsty" id="avrg_ulfptc_dnsty"></td>
	</tr>
	<tr>
		<th><label for="avrg_minudust_dnsty">미세먼지</label></th>
		<td><input type="text" name="avrg_minudust_dnsty" id="avrg_minudust_dnsty"></td>
	</tr>
	<tr>
		<th><label for="avrg_ulvry_idex">자외선</label></th>
		<td><input type="text" name="avrg_ulvry_idex" id="avrg_ulvry_idex"></td>
	</tr>	
	<tr>
		<th colspan="2">
			<button type="button" onclick="fn_submit();return false;">등록</button>
			<button type="reset">취소</button>
		</th>				
	</tr>
</table>
</form>
</body>
</html>