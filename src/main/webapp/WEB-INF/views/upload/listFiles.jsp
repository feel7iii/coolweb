<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>任务管理</title>
</head>

<body>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading text-center">
				<h3>上传示例</h3>
			</div>
			<div class="panel-body">

				<a class="btn btn-primary" href="${ctx}/upload/up">
					<span class="glyphicon glyphicon-chevron-left">返回</span>
				</a> <br> <br>
				<h4>所有上传文件</h4>

			</div>
			<table class="table table-hover table-condensed">
				<thead>
					<tr>
						<th width="5%">编号</th>
						<th width="40%">文件名称</th>
						<th width="20%">文件类型</th>
						<th width="15%">文件大小</th>
						<th width="10%">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${fileList.content}" var="dataFile" varStatus="loopCounter">
						<tr>
							<td><c:out value="${loopCounter.count}" /></td>
							<td><c:out value="${dataFile.name}" /></td>
							<td><c:out value="${dataFile.type}" /></td>
							<td><c:choose>
									<c:when test="${(dataFile.size < 1024)}">
										${dataFile.size/(1024 * 1.0)} Bytes
									</c:when>
									<c:when test="${(dataFile.size >= 1024) && (dataFile.size < 1024*1024)}">
										<fmt:formatNumber value="${dataFile.size/(1024 * 1.0)}" maxFractionDigits="2" /> KB
									</c:when>
									<c:when test="${(dataFile.size >= 1024*1024)}">
										<fmt:formatNumber value="${dataFile.size/(1024 * 1024 * 1.0)}" maxFractionDigits="2" /> MB
									</c:when>
								</c:choose></td>

							<td><a class="btn btn-primary" href="${ctx}/upload/get/${dataFile.id}">
									<span class="glyphicon glyphicon-download">下载</span>
							</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<tags:pagination page="${fileList}" paginationSize="5"/>
		</div>
	</div>
</body>

</html>