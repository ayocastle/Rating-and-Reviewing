<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Products List</h3>
	<table border="1">
		<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Price</th>
		<th>Photo</th>
		<th>Option</th>
		</tr>
		<c:forEach var="product" items="$products"/>
		<tr>
		<td>($product.id)</td>
		<td>($product.name)</td>
		<td>($product.price)</td>
		<td><img src="${pageContext.request.contextPath }/resouece/images/$(product.photo)" width="60"></td>
		<td><a href="${pageContext.request.contextPath }/product/detail/$(product.id)">Detail</a></td>
		</tr>
	</table>

</body>
</html>