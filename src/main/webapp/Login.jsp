<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
body {
  font-family: sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background-color: #f4f4f4;
}

form {
  background-color: #fff;
  border: 1px solid #ddd;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  padding: 30px;
  border-radius: 10px;
  margin: 20px;
  width: 300px;
  display: flex;
  flex-direction: column;
  gap: 10px;
}

h1 {
  text-align: center;
  margin-bottom: 20px;
}

input[type="text"],
input[type="password"] {
  padding: 10px;
  margin-bottom: 10px;
  border: 1px solid #ddd;
  border-radius: 5px;
  box-sizing: border-box;
}

input[type="submit"] {
  background-color: #007bff;
  color: white;
  padding: 10px 15px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #0056b3;
}

.register-link {
  display: inline-block;
  background-color: #28a745;
  color: white;
  padding: 10px 15px;
  border-radius: 5px;
  text-decoration: none;
  text-align: center;
  
}

.register-link:hover {
  background-color: #218838;
}
</style>
</head>
<body>
  <form method="post" action="welcome">
    <h1>Login</h1>
    <input type="text" name="customerId" placeholder="Enter your customer Id" required />
    <input type="password" name="password" placeholder="Enter your password" required />
    <input type="submit" value="login" name="login"/>
    <a href="index.jsp" class="register-link">Register</a>
  </form>
</body>
</html>