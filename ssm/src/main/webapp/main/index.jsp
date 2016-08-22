<%--
  Created by IntelliJ IDEA.
  User: zhongxing
  Date: 2016/8/21
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>

<frameset rows="9%,*" noresize="noresize" border="0">
    <frame src="top.jsp" >
    <frameset cols="15%,*">
        <frame src="left.jsp" target="right">
        <frame src="customer_index.jsp" name="right">
    </frameset>
</frameset>
</html>
