<%--
  Created by IntelliJ IDEA.
  User: zhongxing
  Date: 2016/8/21
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>登录界面</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <style>

        #left {

            margin-top: 10px;
            margin-left: 20px;
            font-size: 30px;
            color: white;
        }

        #panel {
            width: 500px;
            height: 300px;
            margin: 150px auto;
        }

        body {
            background-image: url("image/login.png");
        }
    </style>

    <script>
        $(function () {
            $("#button").click(function () {
                var firstname = $("#firstname").val().trim();
                var password = $("#password").val().trim();

                //alert(firstname + " " + password);

                if (firstname.length == 0 || password.length == 0) {
                    alert("用户名或密码不能为空！");
                    return false;
                }

                $.ajax({
                    type: "post",
                    url: "${pageContext.request.contextPath}/login",
                    data: {"firstName": firstname, "password": password},
                    error: function (event, request, settings) {
                        alert("请求失败！");
                    },
                    dataType: "json",
                    success: function (data) {
                        if (data != null) {
                            if (data.code != 3)
                                alert("登录失败！");
                            else
                                window.location.href = "${pageContext.request.contextPath}/" + data.href;
                        }
                    }
                });

                return false;
            })

        });
    </script>
</head>
<body>
<div>
    <div id="left">
        <span>11012-阳中兴</span>
    </div>
    <div id="panel">
        <div class="panel panel-default">
            <div class="panel-heading"><strong>电影租赁管理系统</strong></div>
            <div class="panel-body">
                <form action="login" method="post">
                    <div class="form-group">
                        <label>用户名:</label>
                        <input id="firstname" type="text" class="form-control" name="firstname" placeholder="username">
                    </div>
                    <div class="form-group">
                        <label>密码:</label>
                        <input id="password" type="password" class="form-control" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-info" id="button">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>