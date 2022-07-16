<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>User Portal</title>

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
				<h3 class="masthead-brand">Welcome to Claim Real Estate!</h3>
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link active" href="/">Home</a> <a class="nav-link"
						href="/profile">Go to Profile</a> <a class="nav-link"
						href="/contact">Contact</a>
				</nav>
			</div>
		</header>

		<main role="main" class="inner cover">
			<h1 class="cover-heading">Registration Success!</h1>
			<p class="lead">Thank you ${newUser.firstName}
				${newUser.lastName} for signing up for this test page.</p>
			<p class="lead">You can sign into your account using the email
				${newUser.email} and password given.</p>
			<p class="lead">
				<a href="/" class="btn btn-lg btn-secondary">Return Home</a>
			</p>
		</main>

		<footer class="mastfoot mt-auto">
			<div class="inner">
				<p>
					Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>,
					by <a href="https://twitter.com/mdo">@mdo</a>.
				</p>
			</div>
		</footer>
	</div>


</body>

</html>

