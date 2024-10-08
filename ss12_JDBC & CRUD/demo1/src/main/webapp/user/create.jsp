<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/30/2024
  Time: 9:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Create</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?">List All Users</a>
    </h2>
</center>
<div align="center">
    <form method="post" action="/users?action=create">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New User</h2>
            </caption>
            <tr>
                <th>User Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>User Email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Country:</th>
                <td>
                    <input type="text" name="country" id="country" size="15"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                   <input type="submit" value="Save"/>

                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
