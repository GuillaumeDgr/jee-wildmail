<%--
  Created by IntelliJ IDEA.
  User: wilder
  Date: 10/12/17
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Send an email</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/mail/content">
    <label for="createTo">To : </label>
    <input required type="email" name="createToValue" id="createTo" placeholder="Send to..." />
    <br />
    <label for="createContent">Content : </label>
    <br />
    <textarea required name="createContentValue" id="createContent" placeholder="Your content here..."></textarea>
    <input type="submit" value="Send" />
</form>
</body>
</html>
