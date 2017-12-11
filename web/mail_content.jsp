<%--
  Created by IntelliJ IDEA.
  User: wilder
  Date: 10/12/17
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Email content</title>
    </head>
    <body>
        <p><strong>From : </strong>${mailBean.from}</p>
        <p><strong>To : </strong>${mailBean.to}</p>
        <p><strong>Content : </strong>${mailBean.content}</p>
    </body>
</html>