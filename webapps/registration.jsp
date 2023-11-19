<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOC TYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Page</title>
</head>
<body>
    <h2>Registration Page</h2>

    <form action="RegistrationServlet" method="post">
        <label>Email:</label>
        <input type="text" name="email" required><br>

        <label>Full Name:</label>
        <input type="text" name="fullName" required><br>

        <label>Password:</label>
        <input type="password" name="password" required><br>

        <input type="submit" value="Register">
    </form>
</body>
</html>
