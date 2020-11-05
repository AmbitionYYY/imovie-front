<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>爱电影--门户网--好看的电影尽在这里--提供海量视频</title>
<!-- 引入jquery的js文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
</head>
<body>
<a href="${pageContext.request.contextPath }/main/main-show">由当前页面跳转到另一个页面，在另一个界面中显示分类页面等</a>
</body>
<script type="text/javascript">

//预加载操作
$(function () {
	location.href="${pageContext.request.contextPath }/main/main-show";
});


</script>

</html>