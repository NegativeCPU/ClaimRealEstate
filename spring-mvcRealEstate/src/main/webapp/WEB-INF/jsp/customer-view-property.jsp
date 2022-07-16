<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title>Customer Property List</title>
</head>
<body>
	<h2 class="cover-heading">Properties available</h2>
	<table class="table">
		<caption>Property List</caption>
		<thead>
			<tr>
				<th scope="col">Street</th>
				<th scope="col">City</th>
				<th scope="col">State</th>
				<th scope="col">Zip Code</th>
				<th scope="col">List Price</th>
				<th scope="col">Square Foot</th>
				<th scope="col">Acreage</th>
			</tr>
		</thead>
		<c:forEach items="${properties }" var="property">
			<tr>
				<td><c:out value="${property.propertyAddress.street}"></c:out></td>
				<td><c:out value="${property.propertyAddress.city}"></c:out></td>
				<td><c:out value="${property.propertyAddress.state}"></c:out></td>
				<td><c:out value="${property.propertyAddress.zip}"></c:out></td>
				<td><c:out value="${property.listPrice}"></c:out></td>
				<td><c:out value="${property.sqft}"></c:out></td>
				<td><c:out value="${property.acreage}"></c:out></td>

			</tr>
		</c:forEach>
	</table>

</body>
</html>