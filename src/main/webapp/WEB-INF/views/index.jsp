<%--
  Created by IntelliJ IDEA.
  User: LapTop
  Date: 9/15/2020
  Time: 12:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <form id="calForm" method="post" class="form form-group">
        <label>number 1:
            <input type="number" name="num1" value="0">
        </label>
        <label>number 2:
            <input type="number" name="num2" value="0">
        </label>
        <button type="button" id="add" onclick="doCalculate(this.id)">add</button>
        <button type="button" id="subtract" onclick="doCalculate(this.id)">subtract</button>
        <button type="button" id="multiply" onclick="doCalculate(this.id)">multiply</button>
        <button type="button" id="divide" onclick="doCalculate(this.id)">divide</button>
        <input type="hidden" name="bt_type" id="bt_type">
    </form>
    <hr>
    <h3>result: ${result}</h3>
</div>

</body>
<script>
    function doCalculate(id) {
        document.getElementById("bt_type").value = id;
        document.getElementById("calForm").submit();
    }
</script>
</html>