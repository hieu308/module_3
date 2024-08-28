<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form action="calculator-servlet" method="post">
    First operand: <input type="number" name="n1"> <br>
    Operator: <select name="operator" id="">
    <option value="+">cong</option>
    <option value="-">tru</option>
    <option value="*">nhan</option>
    <option value="/">chia</option>
</select> <br>
    Second operand: <input type="number" name="n2">
    <button type="submit" value="submit"> submit</button>
</form>
</body>
</html>