<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homes</title>
<style>
body {
	margin: 0;
	font-family: sans-serif;
}

nav {
	background-color: #f0f0f0;
	padding: 10px 0;
	width: 100%;
	position: fixed;
	top: 0;
	display: flex;
	justify-content: space-between;
}

nav span,button {
	margin-right: 10px;
}

nav div a {
	padding: 5px 8px;
	background-color: red;
	color: white;
	border-radius:5px;
	border: none;
	text-decoration: none;
}

nav ul {
	list-style: none;
	margin: 0;
	padding: 0;
	text-align: center;
}

nav li {
	display: inline;
	margin: 0 20px;
}

nav ul a {
	text-decoration: none;
	color: #333;
	font-weight: bold;
}
</style>
</head>
<body>
	<%
	String name = (String) request.getAttribute("name");
	%>
	<nav>
		<ul>
			<li><a href="#">Homs</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
		<div>
		<span>Welcome, <%=name.toUpperCase()%></span>
		<a href="Login.jsp">Logout</a>
		</div>
		
	</nav>
	<div></div>
</body>
</html>