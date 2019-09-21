<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 21/09/2019
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Hello World</title>
</head>
<body>
<h2><% out.print("JSP says hello!");%></h2>
<p> Dzisiaj jest: <%out.println(java.time.LocalDate.now().toString());%></p>
<p><h3>2+2=<%=2+2%></h3></p>
</body>
</html>
