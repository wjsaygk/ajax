<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	// .check 클래스 중 어떤 원소가 체크되었을 때 발생하는 이벤트
	$(".check").click(function(){  // 여기서 .click은 체크박스의 체크를 뜻한다.
		var str = "";  // 여러개가 눌렸을 때 전부 출력이 될 수 있게 하나의 객체에 담는다.
		$(".check").each(function(){  // .each()는 forEach를 뜻한다.
			if($(this).is(":checked"))  // ":checked"를 이용하여 체크가 되어있는지 아닌지 확인한다.
				str += $(this).val() + " ";  // 체크된 객체를 str에 저장한다.
		});
		$("#multiPrint").text(str);  // #multiPrint에 체크된 원소를 출력한다.

	});



</script>


</head>
<body>


<table border=0>

<tr>

<td>



<!--좌측에 들어가는 테이블-->

checkbox 확인 : <span id="multiPrint"></span><br/>
<table width=400 height=90 border=1 cellspacing=0>
<c:forEach var="team" items="${teams}">
</c:forEach>
<tr>

<td> <input  type="checkbox"  class="check" value="1212"> 삼성 <br></td>

</tr>

<tr>

<td> <input  type="checkbox" > 롯데 <br></td>

</tr>

<tr>

<td> <input  type="checkbox" > 엘지 <br></td>

</tr>

<tr>

<td> <input  type="checkbox" > 에스케이 <br></td>

</tr>

</table>
<!--좌측에 들어가는 테이블 끝-->



</td>

<td>



<!--우측에 들어가는 테이블-->

<table width=400 height=90 border=1 cellspacing=0>


			<tr>
				<td> <span id="multiPrint"></span></td>
			</tr>
		

</table>



</body>
</html>