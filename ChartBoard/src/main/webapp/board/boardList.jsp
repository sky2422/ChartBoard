<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 리스트</title>
</head>
<style>
body {
	font-size: 10pt;
}
button {
	font-size: 10pt;
}
table {
	width: 1200px;
}
th,td {
	border: 1px solid #cccccc;
	padding: 3px;
}
.div{
	align-content: center;
	width: 1200px;
	text-align: center;
	font-size: 15pt;
	margin-bottom: 20px;
}
.div2{
	width: 1200px;
	text-align: left;
	font-size: 8pt;
	margin-bottom: 5px;
}
.div3{
	width: 1200px;
	font-size: 9pt;
}
</style>

<body>
<!-- 번호, 날짜, 동네명, 센서명, 온도, 습도, 초미세먼지, 미세먼지, 자외선 -->
<div class="div1">미세먼지 데이터 목록</div>
<div class="div2">Total : ${total }</div>
<div class="div3">
	<form id="searchFrm" method="post" action="boardList.do">
		<select name="searchGubun" id="searchGubun">
			<option value="admi_nm">동네명</option>
			<option value="sensor_nm">센서명</option>			
		</select>
		<input type="text" name="searchText" id="searchText">
		<button type="submit">검색</button>
	</form>
	
	<table>
		<tr>
			<th>번호</th>
			<th>날짜</th>
			<th>동네명</th>
			<th>센서명</th>
			<th>온도</th>
			<th>습도</th>
			<th>초미세먼지</th>
			<th>미세먼지</th>
			<th>자외선</th>
		</tr>
		
		<c:set var="cnt" value="${rowNumber }"/>
		
		<c:forEach var="result" items="${resultList }">
		
		<tr align="center">
			<td><a href="boardDetail.do?unq=${result.unq }"><c:out value="${cnt }"/></a></td>
			<td align="left"><c:out value="${result.ym }"/></td>
			<td><c:out value="${result.admiNm }"/></td>					
			<td><c:out value="${result.sensorNm }"/></td>					
			<td><c:out value="${result.avrgTp }"/></td>					
			<td><c:out value="${result.avrgHd }"/></td>					
			<td><c:out value="${result.avrgUlfptcDnsty }"/></td>					
			<td><c:out value="${result.avrgMinudustDnsty }"/></td>					
			<td><c:out value="${result.avrgUlvryIdex }"/></td>					
		</tr>
		
			<c:set var="cnt" value="${cnt-1 }"/>
		
		</c:forEach>
		
	</table>
	
	<div style="width: 1200; margin-top: 5px; text-align: center; ">
	
		<c:forEach var="i" begin="1" end="${totalPage }">
			
			<a href="boardList.do?viewPage=${i }">${i }</a>
		
		</c:forEach>	
	</div>
	

<div style="width: 1200px;  margin-top: 5px;  text-align: right;">
	<button type="button" onclick="location='boardWrite.do'">글쓰기</button>
</div>
</div>

</body>
</html>