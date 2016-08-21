<%--
  Created by IntelliJ IDEA.
  User: zhongxing
  Date: 2016/8/21
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
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
        #btn-middle{
            margin-left: 400px;
            margin-top: -30px;
        }
        th{
            text-align: center;
        }
    </style>
    <script>
        $(function () {
            $(".delete").click(function(){
                var a = $(this).attr("myvalue");
                var s = confirm("是否删除数据?");
                if(s==true){
                    window.location.href="delete?id="+a+"";
                }

            })
        })
    </script>
</head>
    <c:if test="${empty customer}">
        <c:redirect url="${pageContext.request.contextPath}/all"></c:redirect>
    </c:if>
<body>
    <div id="top">
        <span><strong>客户管理</strong></span>
    </div>
    <hr>
    <div>
        <span style="margin-left: 10px;font-size: 15px">客户列表</span>
        <div id="btn-middle">
            <a class="btn btn-info" href="alladdress" role="button">新增</a>
        </div>
    </div>
    <table class="table table-stripea " align="center" cellpadding="0" cellspacing="0">
        <thead>
        <tr align="center">
            <th>操作</th>
            <th>FIRST_NAME</th>
            <th>LAST_NAME</th>
            <th>ADDRESS</th>
            <th>EMAIL</th>
            <th>CUSTOMER_ID</th>
            <th>LASTUPDATE</th>
        </tr>
        </thead>
       <c:forEach items="${customer}" var="cus">
           <tr align="center">
               <td><a href="getACustomer?id=${cus.customer_id}">编辑</a>|<a href="#" myvalue="${cus.customer_id}" class="delete">删除</a></td>
               <td>${cus.first_name}</td>
               <td>${cus.last_name}</td>
               <td>${cus.address_id}</td>
               <td>${cus.email}</td>
               <td>${cus.customer_id}</td>
               <td>${cus.last_update}</td>
           </tr>
       </c:forEach>
        <tr>
            <td colspan="7" >
                <div class="row">
                    <div class="col-md-6 col-md-offset-7" style="margin-top: -20px">
                        <nav>
                            <c:choose>
                                <c:when test="${page==1}">
                                    <ul class="pagination">
                                        <li class="disabled">
                                                <span >&laquo;</span>
                                        </li>
                                        <li><a href="all?page=2">1</a></li>
                                        <li><a href="all?page=2">2</a></li>
                                        <li><a href="all?page=3">3</a></li>
                                        <li><a href="all?page=4">4</a></li>
                                        <li><a href="all?page=5">5</a></li>
                                        <li>
                                            <a href="all?page=${page+1}" aria-label="Next">
                                                <span>&raquo;</span>
                                            </a>
                                        </li>
                                    </ul>
                                </c:when>
                                <c:when test="${page==totalpage}">
                                    <ul class="pagination">
                                        <li>
                                            <a href="all?page=${page-1}" aria-label="Previous">
                                                <span >&laquo;</span>
                                            </a>
                                        </li>
                                        <li><a href="all?page=1">1</a></li>
                                        <li><a href="all?page=2">2</a></li>
                                        <li><a href="all?page=3">3</a></li>
                                        <li><a href="all?page=4">4</a></li>
                                        <li><a href="all?page=5">5</a></li>
                                        <li class="disabled">

                                                <span>&raquo;</span>

                                        </li>
                                    </ul>
                                </c:when>
                                <c:otherwise>
                                    <ul class="pagination">
                                        <li>
                                            <a href="all?page=${page-1}" aria-label="Previous">
                                                <span >&laquo;</span>
                                            </a>
                                        </li>
                                        <li ><a href="all?page=2">1</a></li>
                                        <li><a href="all?page=2">2</a></li>
                                        <li><a href="all?page=3">3</a></li>
                                        <li><a href="all?page=4">4</a></li>
                                        <li><a href="all?page=5">5</a></li>
                                        <li>
                                            <a href="all?page=${page+1}" aria-label="Next">
                                                <span >&raquo;</span>
                                            </a>
                                        </li>
                                    </ul>
                                </c:otherwise>
                            </c:choose>

                        </nav>
                    </div>

                </div>
            </td>
        </tr>
    </table>
</body>
</html>
