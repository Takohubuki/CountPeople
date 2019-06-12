<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 123
  Date: 2019/6/8
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>White Give People Counting</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/bootstrap-4.1.3-dist/css/bootstrap.css">
    <script rel="script" src="${pageContext.request.contextPath}/dist/jquery-3.4.1.js"></script>
    <script rel="script" src="${pageContext.request.contextPath}/dist/bootstrap-4.1.3-dist/js/bootstrap.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="mx-auto">
            <h1>White Give People Counting</h1>
        </div>
    </div>
    <div class="row">

        <div class="mx-auto">
            <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/change/index" role="button">返回首页</a>
        </div>
    </div>
    <div class="row">
        <table class="table table-sm table-hover mx-auto">
            <thead>
                <tr>
                    <th scope="col" style="text-align: center;">视频ID</th>
                    <th scope="col" style="text-align: center;">异常时间</th>
                    <th scope="col" style="text-align: center;">阈值</th>
                    <th scope="col" style="text-align: center;">拍摄时间</th>
                    <th scope="col" style="text-align: center;">拍摄地点</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${historywarning}" var="historywarning">
                    <tr>
                        <td align="center">
                            ${historywarning.video_id}
                        </td>
                        <td align="center">
                            ${historywarning.warning_time}
                        </td>
                        <td align="center">
                            ${historywarning.video.threshold}
                        </td>
                        <td align="center">
                            ${historywarning.video.captured_time_s}
                        </td>
                        <td align="center">
                            ${historywarning.video.captured_spot}
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
<%--            <c:forEach items="${historywarning}" var="historywarning">--%>
<%--                ${historywarning}<br>--%>
<%--            </c:forEach>--%>
    </div>
</div>
</body>
</html>
