<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<html>
<head>

    <title>
        White give People Counting
    </title>

    <link rel="stylesheet" href="dist/bootstrap-4.1.3-dist/css/bootstrap.css">
    <script rel="script" src="dist/jquery-3.4.1.js"></script>
    <script rel="script" src="dist/bootstrap-4.1.3-dist/js/bootstrap.js"></script>

</head>

<body>
<div class="container">
    <div class="row">
        <div class="mx-auto">
            <h1>White Give People Counting</h1>
        </div>
    </div>
    <div class="row">
        <div class="float-left">
            <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/change/spot01" role="button">地点一</a>
        </div>
        <div class="mx-auto">
            <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/change/spot02" role="button">地点二</a>
        </div>
        <div class="float-right">
            <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/change/spot03" role="button">地点三</a>

        </div>
    </div>
    <div class="row">
        <div class="embed-responsive embed-responsive-16by9">
            <video class="embed-responsive-item" src="${video.path}" allowfullscreen autoplay="autoplay" controls="controls">
                <source src="${video.path}" type="video/mp4"/>
            </video>
        </div>
<%--            <video class="embed-responsive-item" src="${video.path}">--%>
<%--                <source href="${video.path}">--%>
<%--            </video>--%>

    </div>
    <div class="row">
        <div id="warning-info" class="col-md-6">
            拍摄时间：${video.captured_time_s}<br>
            拍摄地点：${video.captured_spot}<br>
            <c:if test="${warninglist == null}">

            </c:if>
            <c:if test="${warninglist != null}">
                当前视频异常<br>
                有${fn:length(warninglist)}个异常时间：<br>
                <c:forEach var="warninglist" items="${warninglist}">
                    ${warninglist.warning_time}<br>
                </c:forEach>
            </c:if>
        </div>
        <div class="col-md-6">
            <div class="mx-auto">

                <a href="/change/history" class="btn btn-primary btn-lg" role="button">查看历史警报信息</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
