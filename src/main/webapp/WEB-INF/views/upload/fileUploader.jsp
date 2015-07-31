<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title>文件上传</title>
</head>

<body>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading text-center">
				<h3>上传示例</h3>
			</div>
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
					<button id="upload-button" class="btn btn-primary">
						<span class="glyphicon glyphicon-upload">上传</span>
					</button>
					<a class="btn btn-primary pull-right" href="${ctx}/upload/list"> 
						<span class="glyphicon glyphicon-eye-open">查看所有上传文件</span>
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>