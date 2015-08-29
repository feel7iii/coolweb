<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
	<head>
		<title><sitemesh:title/></title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<meta http-equiv="Cache-Control" content="no-store" />
		<meta http-equiv="Pragma" content="no-cache" />
		<meta http-equiv="Expires" content="0" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		
		<!-- PRO ICO -->
		<link type="image/x-icon" href="${ctx}/static/images/favicon.ico" rel="shortcut icon">

		<!--[if !IE]> -->
		<link rel="stylesheet" href="${ctx}/static/ace_static/assets/css/pace.css" />

		<script data-pace-options='{ "ajax": true, "document": true, "eventLag": false, "elements": false }' src="${ctx}/static/ace_static/assets/js/pace.js"></script>

		<!-- <![endif]-->

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="${ctx}/static/ace_static/assets/css/bootstrap.css" />
		<link rel="stylesheet" href="${ctx}/static/ace_static/assets/css/font-awesome.css" />

		<!-- TEXT Fonts -->
		<link rel="stylesheet" href="${ctx}/static/ace_static/assets/css/ace-fonts.css" />

		<!-- ACE styles -->
		<link rel="stylesheet" href="${ctx}/static/ace_static/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!-- JQUERY VALIDATION CSS-->
		<link href="${ctx}/static/jquery-validation/1.11.1/validate.css" type="text/css" rel="stylesheet" />
		
		<!-- JSTREE CSS -->
		<link href="${ctx}/static/jstree/css/style.min.css" type="text/css" rel="stylesheet" />

		<!-- DROPZONE CSS-->
		<link href="${ctx}/static/bootstrapdialog/css/bootstrap-dialog.min.css" type="text/css" rel="stylesheet" />
		<link href="${ctx}/static/dropzone/css/style.css" type="text/css" rel="stylesheet" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="${ctx}/static/ace_static/assets/css/ace-part2.css" class="ace-main-stylesheet" />
		<![endif]-->

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="${ctx}/static/ace_static/assets/css/ace-ie.css" />
		<![endif]-->

		<!-- ace settings handler -->
		<script src="${ctx}/static/ace_static/assets/js/ace-extra.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="${ctx}/static/ace_static/assets/js/html5shiv.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/respond.js"></script>
		<![endif]-->
		<sitemesh:head/>
	</head>

	<body class="no-skin">
		
		<%@ include file="/WEB-INF/layouts/header.jsp"%>
		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
			<%@ include file="/WEB-INF/layouts/left.jsp"%>
			<!-- /section:basics/sidebar -->
			<%@ include file="/WEB-INF/layouts/body.jsp"%>
			<!-- /.main-content -->
			<%@ include file="/WEB-INF/layouts/footer.jsp"%>
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='${ctx}/static/jquery/jquery-1.11.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='${ctx}/static/jquery/jquery-1.11.3.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${ctx}/static/ace_static/assets/js/jquery.mobile.custom.js'>"+"<"+"/script>");
		</script>
		<script src="${ctx}/static/ace_static/assets/js/bootstrap.js"></script>

		<!-- ACE scripts -->
		<script src="${ctx}/static/ace_static/assets/js/ace/elements.scroller.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/elements.colorpicker.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/elements.fileinput.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/elements.typeahead.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/elements.wysiwyg.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/elements.spinner.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/elements.treeview.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/elements.wizard.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/elements.aside.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/ace.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/ace.ajax-content.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/ace.touch-drag.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/ace.sidebar.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/ace.sidebar-scroll-1.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/ace.submenu-hover.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/ace.widget-box.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/ace.settings.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/ace.settings-rtl.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/ace.settings-skin.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/ace.widget-on-reload.js"></script>
		<script src="${ctx}/static/ace_static/assets/js/ace/ace.searchbox-autocomplete.js"></script>
		
		<!-- JQUERY VALIDATION JS -->
		<script src="${ctx}/static/jquery-validation/1.11.1/jquery.validate.min.js" type="text/javascript"></script>
		<script src="${ctx}/static/jquery-validation/1.11.1/messages_bs_zh.js" type="text/javascript"></script>
		
		<!-- DROPZONE JS -->
		<script src="${ctx}/static/bootstrapdialog/js/bootstrap-dialog.min.js" type="text/javascript"></script>
		<script src="${ctx}/static/dropzone/js/dropzone.min.js" type="text/javascript"></script>
		<script src="${ctx}/static/dropzone/js/app.js" type="text/javascript"></script>
		
		<!-- JSTREE JS -->
		<script src="${ctx}/static/jstree/js/jstree.min.js" type="text/javascript"></script>
	</body>
</html>