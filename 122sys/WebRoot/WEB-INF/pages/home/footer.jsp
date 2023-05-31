<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ page  import="com.app.utils.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <!-- footer-section-starts -->
	<div class="footer"> 
		<div class="container">
			
			<div class="clearfix"></div>
			<div class="copy-rights">
				<p>Copyright &copy; 2018. 违章处理中心  All rights reserved.
				</p>
			</div>
		</div>
	</div>
	<!-- footer-section-ends -->
</body>
<script src="<%=basePath %>static/home/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath %>static/home/js/nav.js"></script>
</html>