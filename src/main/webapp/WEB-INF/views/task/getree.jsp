<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>任务管理</title>
	<script type="text/javascript">
		$('#getree').jstree({ 'core' : {
		    'data' : [
		       { "id" : "ajson1", "parent" : "#", "text" : "Simple root node" },
		       { "id" : "ajson2", "parent" : "#", "text" : "Root node 2" },
		       { "id" : "ajson3", "parent" : "ajson2", "text" : "Child 1" },
		       { "id" : "ajson4", "parent" : "ajson2", "text" : "Child 2" },
		    ]
		} });
	</script>
</head>

<body>
	 <div id="getree">11</div>
</body>

</html>