<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="com.example.employeeapi.model.Employee"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
    <style type="text/css">
        table{
            width: 80%;
            margin: auto;
            font-size: 28px;
            border-spacing: 0;
            text-align: center;
            border: black 1px solid;
        }
        .header{
            background-color: black;
            color: white;
        }
        tr{
            height: 60px;
            border: black 2px solid;
        }
        td{
            border: black 1px solid;
        }
        .even{
            background-color: lightgray;
        }
    </style>
</head>
<body>
<table>
    <tr class="header">
        <td>编号</td>
        <td>姓名</td>
        <td>年龄</td>
        <td>性别</td>
    </tr>
    <c:forEach items="${employees}" var="employee" varStatus="loopStatus">
        <tr class="${loopStatus.index % 2 == 0 ? 'even' : ''}">
            <td>${employee.id}</td>
            <td>${employee.name}</td>
            <td>${employee.age}</td>
            <td>${employee.gender}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
