<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*,java.util.*,java.sql.*" %>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>F1000</title>
<style>
    tr,td,th{border:solid 1px;text-align:center;width:30%}
</style>
</head>
<body style="text-align:center">
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/uav_db?useUnicode=true&characterEncoding=utf-8"
     user="root" password="123456" />
<sql:query dataSource="${snapshot}" var="result">
select * from f1000;
</sql:query>
<h1>F1000</h1>
<input type="submit" value="增加" />
<input type="button" value="删除" />
<input type="button" value="修改" />
<input type="text" />
<input type="button" value="查询" />
<table style="margin:0 auto">
<tr>
    <th>飞机编号</th>
    <th>客户名称</th>
    <th>备注信息</th>
    <th>提交日期</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
    <td><c:out value="${row.serial_number}"/></td>
    <td><c:out value="${row.user}"/></td>
    <td><c:out value="${row.info}"/></td>
    <td><c:out value="${row.submission_date}"/></td>
</tr>
</c:forEach>
</table>
</body>
</html>