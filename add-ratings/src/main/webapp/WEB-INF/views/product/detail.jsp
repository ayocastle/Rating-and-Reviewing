<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; ISO-8859-1">
<title>Insert title here</title>
<link
	href="${pageContext.request.contextPath }/resources/css/jquery.rateyo.min.css"
	rel="stylesheet" type="text/css">
<script
	src="${pageContext.request.contextPath }/resources/js/jquery.rateyo.min.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#hdrating").rateYo({
			rating : 0,
			numStars : 5,
			maxValue : 5,
			halfStar : true
		});
	});
</script>
</head>
<body>
	<h3>Products Detail</h3>
	<a href="${pageContext.request.contextPath }/product">Back</a>
	<table border="1">
		<tr>
			<td>Id</td>
			<td>($product.id)</td>
		</tr>
		<tr>
			<td>Name</td>
			<td>($product.name)</td>
		</tr>
		<tr>
			<td>Price</td>
			<td>($product.price)</td>
		</tr>
		<tr>
			<td>Photo</td>
			<td><img
				src="${pageContext.request.contextPath }/resouece/images/$(product.photo)"
				width="60"></td>
		</tr>
	</table>
	<h3>Ratings and Review</h3>
	<c:forEach var="r" items="${product.reviews } viewStatus="i">
		<tr>
			<td><script type="text/javascript">
				$(function() {
					$("#rating${i.index}").rateYo({
						rating : ${r.rating },
						readOnly:true
					});
				});
			</script> ${r.account.username } 
			<br>
				<div id="rating${i.index}"></div>
			<br> ${r.content }</td>
		</tr>
	</c:forEach>
	<c:if test="${sessionScope.username==null}">
		<a href="${pageContext.request.contextPath }/account/login">Login
			to rate</a>
	</c:if>
	<c:if test="${sessionScope.username!=null}">
		<s:form method="POST" commandName="review"
			action="${pageContext.request.contextPath }/product/sendReview">
			<table border="0">
				<tr>
					<td>Rating</td>
					<td>
						<div id="rating"></div> <input type="hiddden" id="hdrating"
						name="hdrating">
					</td>
				</tr>

				<tr>
					<td>Content</td>
					<td><s:textarea path="content" /> <input type="submit"
						value="Login">
				<tr>
					<td>$nbsp;</td>
					<td><input type="submit" value="Save"> <s:hidden
							path="product.id" /></td>
				</tr>
			</table>
		</s:form>
	</c:if>

</body>
</html>