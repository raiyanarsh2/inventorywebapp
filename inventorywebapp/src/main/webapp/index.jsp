<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<style>
body {
  font-family: sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background-color: #f4f4f4;
}

h1 {
  text-align: center;
  margin-bottom: 20px;
  margin-top: 0;
}
form {
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  padding: 30px;
  margin: 20px;
  width: 350px;
}

input[type="text"],
input[type="email"],
input[type="number"],
input[type="password"] {
  width: 100%;
  padding: 12px;
  margin-bottom: 15px;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-sizing: border-box;
}

input[type="submit"] {
  background-color: #007bff;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  width: 100%;
}

input[type="submit"]:hover {
  background-color: #0056b3;
}

a {
  display: block;
  background-color: #28a745;
  color: white;
  text-align: center;
  padding: 12px 20px;
  border: none;
  border-radius: 5px;
  text-decoration: none;
  margin-top: 15px;
}

a:hover {
  background-color: #218838;
}
</style>
</head>
<body>
	<form method="post" action="welcome">
    <h1>Registration</h1>
		<input type="text" name="name" placeholder="Enter your name" required /> 
		<input type="email" name="email" placeholder="Enter your email" required />
		<input type="number" name="phone" placeholder="Enter your phone number" required />
		<input type="password" name="password" placeholder="Enter your password" required />
		<input type="submit" value="Register"/>
		<a href="Login.jsp">Login</a>
	</form>
</body>
</html>