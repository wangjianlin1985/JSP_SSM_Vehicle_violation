<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>File Upload Page.</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form enctype="multipart/form-data" method="POST" action="<%=basePath%>Fileupload">
    		<input type="file" name="file" required>
    	
    		<button type="submit">上传文件</button>
    		<br>
    		<c:if test="${!empty message}">
    			<span style="color:#c00">${message }</span><br>
    			路径：<br>
    			${saved }
    			<br>
    			<a href="javscript:;" onclick="copy()">拷贝路径</a>
    			</c:if>
    </form>
    <script>
    function copy()
    {
       window.opener.document.getElementById("thumb").value="${saved}";
       window.close();
    }
    </script>
  </body>
</html>
