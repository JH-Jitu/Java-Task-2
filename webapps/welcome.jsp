<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOC TYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome Page</title>
</head>
<body>
    <h2>Welcome Page</h2>

    <p>Hello, <%= request.getAttribute("fullName") %>!</p>

    <a href="logout.jsp">Logout</a>
</body>
</html>
