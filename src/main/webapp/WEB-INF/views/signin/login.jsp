<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<html>
<head>
<title>登录页</title>
<link rel="stylesheet" href="${ctx}/static/etc/css/login.css" />
</head>

<body>
	<div class="container">
		<section id="content">
			<form id="loginForm" action="${ctx}/login" method="post" class="form-horizontal">
				<h1>Login Form</h1>
				<div>
					<input type="text" placeholder="Enter Any Username" name="username" id="username" />
				</div>
				<div>
					<input type="password" placeholder="Enter Any Password" name="password" id="password" />
				</div>
				<div>
					<input type="submit" value="登录" />
					<a href="#">忘记密码</a>
					<a href="${ctx}/register">注册</a>
				</div>
			</form>
			<div class="button">
				<a href="#">		
					<%
					String error = (String) request
							.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
					if (error != null) {
					%>
						登录失败，请重试.
					<%
						}
					%>
				</a>
			</div>
		</section>
	</div>

	<script>
		$(document).ready(function() {
			$("#loginForm").validate();
		});
	</script>
</body>
</html>
