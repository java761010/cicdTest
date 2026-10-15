<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello CI/CD Lab</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 60px auto; max-width: 720px; padding: 0 20px; }
        .button { display: inline-block; margin: 8px 8px 0 0; padding: 12px 18px; background: #2456a6; color: white; text-decoration: none; border-radius: 6px; }
        code { background: #eee; padding: 3px 6px; }
    </style>
</head>
<body>
    <h1>Hello CI/CD</h1>
    <p>Java 21 / Maven / JSP / Jakarta Servlet / Jenkins</p>
    <p>Context Path: <code><%= request.getContextPath() %></code></p>
    <a class="button" href="<%= request.getContextPath() %>/hello">Hello Servlet</a>
    <a class="button" href="<%= request.getContextPath() %>/health">Health Check</a>
</body>
</html>
