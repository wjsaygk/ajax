<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<c:forEach var="product" items="${products}">
		
				<tr class="proId">
					<th>${product.id }</th>
					
					<td></td>
				</tr>

	</c:forEach>
		</table>
</body>
</html>