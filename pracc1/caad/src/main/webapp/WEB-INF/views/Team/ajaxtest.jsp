<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
  $(document).ready(function(){
	  $('#samsung').click(function(){
		if($(this).is(":checked")){ 			
			    $.ajax({
			    	type: 'get' ,
			        url:'/salist',
			        dataType : 'json',
			        contentType: "text/plain",  
			        success:function(data){
			        	  $('.samsung_list').show();    
			        	console.log(data);
			        	 playersa(data);
			        }
			    });
				}else{ 		
					  $('.samsung_list').remove(); 	
					  $('.sam_liner').remove(); 
					  
			} 	
			}); 
	});   

  $(document).ready(function(){
	  $('#lg').click(function(){
		if($(this).is(":checked")){ 			
			    $.ajax({
			    	type: 'get' ,
			        url:'/lglist',
			        dataType : 'json',
			        contentType: "text/plain",  
			        success:function(data){
			        	  $('.lg_list').show();    
			        	console.log(data);
			        	 playerlg(data);
			        }
			    });
				}else{ 		
					  $('.lg_list').remove(); 
					  $('.lg_liner').remove();	
			} 	
			}); 
	});   

  function sam(){
		 $.ajax({
			  type: 'get' ,
			   url: '/salist' ,
			   dataType : 'json' ,
			   contentType: "text/plain", 
			   success: function(data) {
				   console.log(data);
				   $('.sam_liner').show(); 
				   
				   samsungLiner(data);
		   }
	});
	};

	function lg(){
		 $.ajax({
			  type: 'get' ,
			   url: '/lglist' ,
			   dataType : 'json' ,
			   contentType: "text/plain", 
			   success: function(data) {
				   console.log(data);
				   $('.lg_liner').show(); 
				   
				   lgLiner(data);
		   }
	});
	};
 
  


function playersa(data){
      for(var s of data){
         var player_salist ="<tr class='samsung_list'><td>선수:<button onclick=sam()>"+s.pname+"</button></td></tr>";
         console.log(player_salist);
         $("#samsunglist").append(player_salist);
      }
      
   }

function playerlg(data){
    for(var l of data){
       var player_lglist ="<tr class='lg_list'><td>선수:<button onclick=lg()>"+l.pname+"</button></td></tr>";
       console.log(player_lglist);
       $("#lglist").append(player_lglist);
    }
    
 }

function samsungLiner(data){
    for(var s of data){
       var sam_list ="<tr class='sam_liner'><td>아이디:"+s.id+"</td><th>번호:"+s.pno+"</th><th>팀아이디:"+s.pTeamId+"</th><th>나이:"+s.page+"</th>";
       console.log(sam_list);
       $("#samliner").append(sam_list);
    }
    
 }

function lgLiner(data){
    for(var l of data){
       var lg_list ="<tr class='lg_liner'><td>아이디:"+l.id+"</td><th>번호:"+l.pno+"</th><th>팀아이디:"+l.pTeamId+"</th><th>나이:"+l.page+"</th>";
       console.log(lg_list);
       $("#lgliner").append(lg_list);
    }
    
 }

</script>

</head>

<body>
	<c:forEach var="teamSa" items="${teams}">
		<c:forEach var="teamLg" items="${teams1}">
	

	
				<input type="checkbox" class="check1" id="samsung">${teamSa.tname}

				<input type="checkbox" class="check2" id="lg">${teamLg.tname}



				<table>
					<tr id="samsunglist"></tr>

					<c:forEach var="plays" items="${playsa}">
						<tr class="samsung_list">
							<td><button onclick="sam()" style="display:none;"></button></td>
						</tr>

					</c:forEach>
				</table>
				
				<table>
					<tr id="lglist"></tr>

					<c:forEach var="playl" items="${playlg}">
						<tr class="lg_list">
							<td ><button onclick="lg()" style="display:none;"></button></td>
						</tr>

					</c:forEach>
				</table>
				
				<table>
					<tr id="samliner"></tr>

					<c:forEach var="plays" items="${playsa}">
						<tr class="sam_liner">
							<td ></td>
						</tr>

					</c:forEach>
				</table>
				
				<table>
					<tr id="lgliner"></tr>

					<c:forEach var="playl" items="${playlg}">
						<tr class="lg_liner">
							<td ></td>
						</tr>

					</c:forEach>
				</table>

		
		</c:forEach>
	</c:forEach>


</body>
</html>