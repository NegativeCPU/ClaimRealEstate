<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>Student Portal</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link href="cover.css" rel="stylesheet">
</head>


<body class="text-center">
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<header class="masthead mb-auto">
			<div class="inner">
				<h3 class="masthead-brand">Cover</h3>
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link active" href="/">Home</a>
				</nav>
			</div>
		</header>

		<main role="main" class="inner cover">


			<form:form modelAttribute="userLogin" action="/login" method="post">
				<h3 class="text-danger">${msg}</h3>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">Email</label>
						<form:input path="email" type="text" class="form-control"
							id="inputEmail4" />
						<div class="invalid-feedback">${msg}</div>
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputPassword4">Password</label>
						<form:input path="password" type="password" class="form-control"
							id="inputPassword4" />
					</div>
				</div>

				<button type="submit" class="btn btn-primary">Login</button>
			</form:form>


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