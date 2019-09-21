<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 21/09/2019
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! private long visitCount = 0; %>
<html>
<head>
    <title>JSP Hello World</title>
</head>
<body>
<h2><% out.print("JSP says hello!");%></h2>
<p><h3> Dzisiaj jest: <%out.println(java.time.LocalDate.now().toString());%></h3></p>
<h3>2+2=<%=2+2%></h3>
<h4>Ilosc Odwiedzin: <%= ++visitCount%></h4>
</body>
</html>
