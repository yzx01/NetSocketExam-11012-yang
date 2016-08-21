<%--
  Created by IntelliJ IDEA.
  User: zhongxing
  Date: 2016/8/21
  Time: 12:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <style>
        #left{
            width: 200px;
        }
    </style>
</head>
<body>
<div id="left">
    <div class="panel-group" id="accordion2">
        <div class="panel panel-default">
            <div class="panel-heading" data-toggle="collapse"
                 data-parent="#accordion2" href="#collapseOne">
                <a class="accordion-toggle">Customer管理</a>
            </div>
            <div id="collapseOne" class="panel-collapse collapse"
                 style="height: 0px;">
                <div class="panel-body">
                    <ul class="nav nav-pills nav-stacked">
                        <li><a href="#">Java基础</a></li>
                        <li><a href="#">Java面向对象</a></li>
                        <li><a href="#">Java核心API</a></li>
                        <li><a href="#">JavaEE</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading" data-toggle="collapse"
                 data-parent="#accordion2" href="#collapseThree">
                <a class="accordion-toggle">FILM设置</a>
            </div>
            <div id="collapseThree" class="panel-collapse collapse"
                 style="height: 0px;">
                <div class="panel-body">
                    <ul class="nav nav-pills nav-stacked">
                        <li><a href="#">NoSQL</a></li>
                        <li><a href="#">Hadoop</a></li>
                        <li><a href="#">WebService</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>