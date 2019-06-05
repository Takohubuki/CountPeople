<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <iframe class="embed-responsive-item" src="${video.path}" allowfullscreen ></iframe>
        </div>
    </div>
    <div class="row">
        <div id="warning-info">

        </div>
    </div>
</div>

</body>
</html>
