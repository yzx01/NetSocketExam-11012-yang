<%--
  Created by IntelliJ IDEA.
  User: zhongxing
  Date: 2016/8/20
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:if test="${empty allcustomer}">
        没有数据
    </c:if>
    <c:if test="${not empty allcustomer}">
        <table border="1">
            <tr>
                <th>id</th>
                <th>store_id</th>
                <th>first_name</th>
                <th>last_name</th>
            </tr>
            <c:forEach items="${allcustomer}" var="cus">
                <tr>
                    <td>${cus.customer_id}</td>
                    <td>${cus.store_id}</td>
                    <td>${cus.first_name}</td>
                    <td>${cus.last_name}</td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</body>
</html>
