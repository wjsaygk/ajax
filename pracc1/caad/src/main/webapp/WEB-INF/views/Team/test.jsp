<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
	
<script>


$('#samsung').click(function(){
    $.ajax({
    	type: 'get' ,
        url:'/salist',
        dataType : 'json',
        contentType: "text/plain", 
        success:function(data){
        	 $('.samsung_list').remove(); 
        	console.log(data);
        	 playersa(data);
        }
    });
});
});



function playersa(data){
      for(var s of data){
         var player_salist ="<tr class='samsung_list'><td>"+s.pname+"</td>";
         console.log(player_salist);
         $("#multiPrint").append(player_salist);
      }
      
   }

</script>

</head>

<body>


	<c:forEach var="teamSa" items="${teams}">
		<c:forEach var="teamLg" items="${teams1}">
			<form>



				<input type="checkbox" class="check" id="samsung" value="1">${teamSa.tname}

				<input type="checkbox" class="check" id="lg">${teamLg.tname}



				<table>
					<tr id="test"></tr>

					<c:forEach var="plays" items="${playsa}">
						<tr class="samsung_list">
							<td></td>
						</tr>

					</c:forEach>
				</table>
				<span id="multiPrint"></span><br/>
			</form>
		</c:forEach>
	</c:forEach>


</body>
</html>