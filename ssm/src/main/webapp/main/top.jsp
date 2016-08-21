<%--
  Created by IntelliJ IDEA.
  User: zhongxing
  Date: 2016/8/21
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <style>
        #top{
            width: 100%;
            height: 60px;
            background-color: #5bc0de;
        }
        #name{
            float: left;
            margin-top: 10px;
            margin-left: 20px;
            color: white;
            font-size: 25px;;
        }
        #out_login{
            float: right;
            margin-top: 15px;
            margin-right: 30px;
        }
    </style>
</head>
<body>
<div id="top">
    <div id="name">
        <span>11012-阳中兴</span>
    </div>
    <div id="out_login">
        <a class="btn btn-default" href="../loginout" target=_parent role="button">${firstname==null?'未登录':firstname}</a>

    </div>
</div>
</body>
</html>
