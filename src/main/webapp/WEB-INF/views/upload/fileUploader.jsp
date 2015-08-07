<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>文件上传</title>
</head>

<body>
	<div class="panel panel-default">
		<div class="panel-body">
			<div>
				<form id="dropzone-form" class="dropzone" enctype="multipart/form-data">
					<div class="dz-default dz-message file-dropzone text-center well col-sm-12">
						<span class="glyphicon glyphicon-paperclip"></span>
						<span>将文件拖拽到区域位置</span><br> 
						<span>或者</span><br>
						<span>点击上传</span>
					</div>

					<!-- this is were the previews should be shown. -->
					<div class="dropzone-previews"></div>
				</form>
				<hr>
				<button id="upload-button" class="btn btn-success">上传文件</button>
				<a class="pull-right" href="${ctx}/upload/list"> 
					<button class="btn">查看所有上传文件</button>
				</a>
			</div>
		</div>
	</div>
</body>
</html>