<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>登录页</title>
	
	<!-- PRO ICO -->
	<link type="image/x-icon" href="${ctx}/static/images/favicon.ico" rel="shortcut icon">
	
	<link rel="stylesheet" href="${ctx}/static/login/style.css" />
</head>

<body>
	<div class="container">
		<section id="content">
			<form action="${ctx}/login" method="post">
				<h1>Login Form</h1>
				<div>
					<input type="text" placeholder="Username" name="username" required="" id="username" />
				</div>
				<div>
					<input type="password" placeholder="Password" name="password" required="" id="password" />
				</div>
				<div>
					<input type="submit" value="Log in" />
					<a href="#">Lost your password?</a>
					<a href="#">Register</a>
				</div>
			</form>
			<%
			String error = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
			if(error != null){
			%>
				<div class="button">
						<a href="#">登录失败，请重试.</a>
				</div>
			<%
			}
			%>
		</section>
	</div>
</body>
</html>