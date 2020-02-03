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
	
	// 전부 체크하는 방법
	$("#allCheck").click(function(){
		
		if($(this).is(":checked"))  // 먼저 #allCheck가 선택되었는지 확인한다.
		
                        // 체크가 되어있으면 .check의 모든 원소에 checked="checked"를 추가한다.

			$(".check").attr("checked","checked")  

		else
	
			$(".check").removeAttr("checked")  // 체크가 안 되어있으면 "checked"를 제거한다.

			 // 이 때 체크가 되어있는 원소는 안 바뀐다. 어디까지나 체크가 안 된 것들에 대해서만 효과가 있다.

		var str = "";  // 여러개가 눌렸을 때 전부 출력이 될 수 있게 하나의 객체에 담는다.

		$(".check").each(function(){  // .each()는 forEach를 뜻한다.

			if($(this).is(":checked"))  // ":checked"를 이용하여 체크가 되어있는지 아닌지 확인한다.

				str += $(this).val() + " ";  // 체크된 객체를 str에 저장한다.

		});

		$("#multiPrint").text(str);  // #multiPrint에 체크된 원소를 출력한다.

	});

});



function player(data){
      for(var p of data){
         var player_list = "<div id='list'>"+선수정보+"</div>";
         console.log(player_list);
         $("#list").before(player_list);
      }
      
      
   }


</script>

</head>
<body>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.js"></script>

<c:forEach var="teamSa" items="${teams}">
<c:forEach var="teamLg" items="${teams1}">
<form>



<input type="checkbox" class="check" value="${teamSa.id }, ${teamSa.tname },${teamSa.tyear }" >삼성팀

<input type="checkbox" class="check" value="${teamLg.id }, ${teamLg.tname },${teamLg.tyear } ">엘지팀

<input type="checkbox" id="allCheck" >모두 체크<br/>


<span id="multiPrint"></span><br/>

<div id="list">선수정보</div>

</form>
</c:forEach>
</c:forEach>


</body>
</html>