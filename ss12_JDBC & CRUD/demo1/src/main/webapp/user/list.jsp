<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>list</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<h1><a href="/users?action=null "> Trang chủ</a></h1>
<center>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>
</center>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <form class="d-flex" action="/users" method="get">
                <input type="hidden" name="action" value="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
                <button class="btn btn-primary" type="submit">Search</button>
            </form>
        </div>
    </div>
</div>
<div class="container ">
    <table  class="table" border="1" cellpadding="5" style="border-collapse: collapse;width: 80%;margin: 0 auto;" >
        <thead>
        <tr>
            <th style="text-align: center;" scope="col">Id</th>
            <th style="text-align: center;" scope="col">Name</th>
            <th style="text-align: center;" scope="col">Email</th>
            <th style="text-align: center;" scope="col">Country</th>
            <th style="text-align: center;" scope="col">Action</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach var="user" items="${listUser}">
            <tr>
                <td style="text-align: center;"><c:out value="${user.id}"/></td>
                <td style="text-align: center;"><c:out value="${user.name}"/></td>
                <td style="text-align: center;"><c:out value="${user.email}"/></td>
                <td style="text-align: center;" ><c:out value="${user.country}"/></td>
                <td style="text-align: center;">
                    <a href="/users?action=edit&id=${user.id}"><button type="button" class="btn btn-success">Edit</button></a>
                    <a href="/users?action=delete&id=${user.id}"><button type="button" class="btn btn-danger">Delete</button></a>
            </tr>
        </c:forEach>


        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>

</body>
</html>
