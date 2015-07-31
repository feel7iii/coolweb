<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<title><sitemesh:title/></title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />

<!-- PRO ICO -->
<link type="image/x-icon" href="${ctx}/static/images/favicon.ico" rel="shortcut icon">

<!-- BOOTSTRAP MIN CSS -->
<link href="${ctx}/static/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />

<!-- JQUERY VALIDATION CSS-->
<link href="${ctx}/static/jquery-validation/1.11.1/validate.css" type="text/css" rel="stylesheet" />

<!-- MAIN CSS -->
<link href="${ctx}/static/styles/default.css" type="text/css" rel="stylesheet" />

<!-- JQUERY -->
<script src="${ctx}/static/jquery/jquery-1.11.3.min.js" type="text/javascript"></script>

<!-- JQUERY VALIDATION JS -->
<script src="${ctx}/static/jquery-validation/1.11.1/jquery.validate.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/messages_bs_zh.js" type="text/javascript"></script>

<!-- BOOTSTRAP MIN JS -->
<script src="${ctx}/static/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<!-- BEGIN DROPZONE -->
<link href="${ctx}/static/bootstrapdialog/css/bootstrap-dialog.min.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/static/dropzone/css/style.css" type="text/css" rel="stylesheet" />

<script src="${ctx}/static/bootstrapdialog/js/bootstrap-dialog.min.js" type="text/javascript"></script>
<script src="${ctx}/static/dropzone/js/dropzone.min.js" type="text/javascript"></script>
<script src="${ctx}/static/dropzone/js/app.js" type="text/javascript"></script>
<!-- END DROPZONE -->

<sitemesh:head/>
</head>

<body>
	<div class="container">
		<%@ include file="/WEB-INF/layouts/header.jsp"%>
		<div id="content">
			<sitemesh:body/>
		</div>
		<%@ include file="/WEB-INF/layouts/footer.jsp"%>
	</div>
</body>
</html>