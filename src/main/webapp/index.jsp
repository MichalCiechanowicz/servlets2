<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <title>
        SDA Servlets - zajecia drugie</title>
    <meta charset="UTF-8">
</head>
<body>
<h1>Servlets 2</h1>
<h3>Servlet 1: Configuration</h3>
<a href="localhost:8080/servlets2/hi">Default</a>
<FORM ACTION="/servlets2/hi" METHOD="get">
    Name:
    <input type="text" name="who"><br>
    <input type="submit" value="Send"><br>
</FORM>
<hr>
<h3> Servlet 2: Redirects</h3>
<a href="/servlets2/clientRedirect">Po stronie Clienta</a><br>
<a href="/servlets2/serverRedirect">Po stronie Servera</a><br>
<hr>
<h3> Servlet 3: Filter</h3>
<a href="/servlets2/filter"> Domyslne przywitanie bez parametru</a><br>
<br>Z parametrem<br>
<form action="/servlets2/filter"
      method="get">
    User:
    <input type="text" name="user"><br>
    <input type="submit" name="send"><br>
</form>
<hr>
<h3> Servlet 4: JSP</h3>
<a href="/servlets2/jsp">Przekierowanie z servletu</a><br>
<a href="/servlets2/JspHelloWorld.jsp">Strona JSP</a>
<br>
<hr>
</body>
</html>
