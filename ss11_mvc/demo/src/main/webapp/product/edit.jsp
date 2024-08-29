<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/29/2024
  Time: 10:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>
    Edit product
</h1>
<p>
    <c:if test="${message} !=null">
        <span >${message}</span>
    </c:if>
</p>
<p>
    <a href="/product">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend> Product infomation</legend>
        <table>
            <tr>
                <td>Id: </td>
                <td><input type="number" name="id" value="${product.getId()}" ></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="${product.getName()}" ></td>

            </tr>

            <tr>
                <td>Name:</td>
                <td><input type="number" name="price" value="${product.getPrice()}" ></td>

            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Edit product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
