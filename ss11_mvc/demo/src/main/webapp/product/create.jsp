<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/29/2024
  Time: 9:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <style>
        .message{
            color: green;
        }
    </style>
</head>
<body>
<h1>Add product</h1>
<p>
    <c:if test="${not empty message}">
        <span class="message">${message}</span>
    </c:if>
</p>
<p>
    <a href="/product">Back to customer list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product infomation</legend>
        <table>

            <tr>
                <td>Name</td>
                <td><input type="text" name="name" id="name" required></td>
            </tr>
            <tr>
                <td>Price</td>
                <td><input type="number" name="price" id="price" required></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Add product"></td>
            </tr>

        </table>
    </fieldset>
</form>
</body>
</html>
