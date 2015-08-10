<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<title>任务管理</title>

<!-- PRO ICO -->
<link type="image/x-icon" href="${ctx}/static/images/favicon.ico"rel="shortcut icon">

<link rel="stylesheet" href="${ctx}/static/etc/css/bootstrap_v2.1.1.min.css" />
<link rel="stylesheet" href="${ctx}/static/etc/css/style.css" />
</head>

<body>
	<hr>
	<div class="row-fluid">
		<ul class="dshb_icoNav clearfix">
			<li>
				<a href="${ctx}/task" style="background-image: url(${ctx}/static/etc/img/gCons/processing.png)">
					TOOL
				</a>
			</li>
			<li>
				<a href="${ctx}/upload/up" style="background-image: url(${ctx}/static/etc/img/gCons/processing.png)">
					TOOL
				</a>
			</li>
			<li>
				<a href="javascript:void(0)" style="background-image: url(${ctx}/static/etc/img/gCons/processing.png)">
					<span class="label label-info">TODO</span> TOOL
				</a>
			</li>
			<li>
				<a href="javascript:void(0)" style="background-image: url(${ctx}/static/etc/img/gCons/processing-02.png)">
					<span class="label label-success">TODO</span> TOOL
				</a>
			</li>
			<li>
				<a href="javascript:void(0)" style="background-image: url(${ctx}/static/etc/img/gCons/processing-02.png)">
					<span class="label label-success">TODO</span> TOOL
				</a>
			</li>
			<li>
				<a href="javascript:void(0)" style="background-image: url(${ctx}/static/etc/img/gCons/processing-02.png)">
					<span class="label label-success">TODO</span> TOOL
				</a>
			</li>
			<li>
				<a href="javascript:void(0)" style="background-image: url(${ctx}/static/etc/img/gCons/lab.png)">
					<span class="label label-important">TODO</span> TOOL
				</a>
			</li>
			<li>
				<a href="javascript:void(0)" style="background-image: url(${ctx}/static/etc/img/gCons/lab.png)">
					<span class="label label-important">TODO</span> TOOL
				</a>
			</li>
			<li>
				<a href="javascript:void(0)" style="background-image: url(${ctx}/static/etc/img/gCons/lab.png)">
					<span class="label label-important">TODO</span> TOOL
				</a>
			</li>
		</ul>
	</div>
</body>
</html>