<%--
  Created by IntelliJ IDEA.
  User: zhongxing
  Date: 2016/8/21
  Time: 18:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <style>
        #top{
            margin-top: 10px;
            margin-left: 10px;
            font-family: "Arial Black";
            font-size: 20px;
        }
        hr{
            color: #46b8da;
        }
        #panel{
            width: 400px;
            margin-left: 10px;
            margin-top: 20px;
        }
        .import{
            color: red;
        }
    </style>
    <script>
        function test(){
            var f = $("#first").val();
            var l = $("#last").val();

            if(f==""||l==""){
                alert("不能为空")
                return false;
            }else{
                document.f.submit();
            }

        }
    </script>
</head>
<body>
<div class="panel panel-default">
    <div id="top">
        <span><b>创建Customer</b></span>
    </div>
    <hr>
    <div id="panel">
        <div class="panel panel-default">
            <div class="panel-heading"><strong>基本信息</strong></div>
            <div class="panel-body">
                <form  method="post" action="addaddress" name="f">
                    <div class="form-group">
                        <label>First_Name:</label><span class="import">*</span>
                        <input type="text" id="first" class="form-control" name="first_name" >
                    </div>
                    <div class="form-group">
                        <label>Last_Name:</label><span class="import">*</span>
                        <input type="text" id="last" class="form-control" name="last_name" >
                    </div>
                    <div class="form-group">
                        <label>Email:</label>
                        <input type="email" class="form-control" name="email" >
                    </div>
                    <div class="form-group">
                        <label>Address</label><span class="import">*</span>
                        <select name="address_id" class="form-control">
                           <c:forEach items="${address}" var="add">
                               <option value="${add.address_id}">${add.address}</option>
                           </c:forEach>
                        </select>
                    </div>
                    <button type="button" class="btn btn-info" onclick="test()">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>