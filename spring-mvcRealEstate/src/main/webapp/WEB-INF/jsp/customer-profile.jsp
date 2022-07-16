<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title>Customer</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link href="cover.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body class="text-center">

	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<header class="masthead mb-auto">
			<div class="inner">
				<h3 class="masthead-brand">Claim Real Estate</h3>
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link" href="/customer-view-property">View
						Properties</a> <a class="nav-link" href="/contact">Contact</a>
				</nav>
			</div>
		</header>

		<main role="main" class="inner cover">
			<h1 class="cover-heading">Welcome</h1>
			<img src="assets/images/square-claim-lion.png">
			<p class="lead">Customer Profile Area</p>
			<p class="lead">
				<a href="/" class="btn btn-lg btn-secondary">Learn more</a>
			</p>
		</main>

	</div>
</body>
</html>