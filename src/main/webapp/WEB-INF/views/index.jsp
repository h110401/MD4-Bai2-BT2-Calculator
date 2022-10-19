<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--implementation group: 'javax.servlet', name: 'jstl', version: '1.2'--%>
<%--implementation group: 'mysql', name: 'mysql-connector-java', version: '8.0.30'--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<h1>Calculator</h1>

<form action="/calculate">
    <input type="number" name="num1" value="0">
    <input type="number" name="num2" value="0">
    <div></div>
    <input type="submit" name="operator" value="plus">
    <input type="submit" name="operator" value="minus">
    <input type="submit" name="operator" value="times">
    <input type="submit" name="operator" value="divide">
</form>

<c:if test="${error != null}">
    <p style="color:red;">${error}</p>
</c:if>
<c:if test="${error == null && result != null}">
    <p>Result result = ${result}</p>
</c:if>

</body>
</html>