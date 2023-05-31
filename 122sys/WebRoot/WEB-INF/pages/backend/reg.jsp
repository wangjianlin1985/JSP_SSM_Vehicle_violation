<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>车主注册-违章处理中心</title>

        <!-- CSS -->        
        <link rel="stylesheet" href="<%=basePath %>static/login/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%=basePath %>static/login/assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="<%=basePath %>static/login/assets/css/form-elements.css">
        <link rel="stylesheet" href="<%=basePath %>static/login/assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
<link href="<%=basePath %>static/dist/sweetalert.css" rel="stylesheet">	
        <script src="<%=basePath %>static/dist/sweetalert.min.js"></script>

    </head>

    <body>

		<!-- Top menu -->
		<nav class="navbar navbar-inverse navbar-no-bg" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" style="text-indent:0px;background:none;color:#fff;font-weight:bold;width:190px;" href="<%=basePath%>">
					违章处理中心					
					</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="top-navbar-1">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<span class="li-text">
								欢迎您使用本系统，
							</span> 
							<a href="<%=basePath%>backendui/login"><strong>我要登录,</strong></a> 
							<span class="li-text">
								点击图标进行操作
							</span> 
							<span class="li-social">
								<a href="<%=basePath%>"><i class="fa fa-home"></i></a> 
								<a href="<%=basePath%>backendui/login"><i class="fa fa-refresh"></i></a> 
							</span>
						</li>
					</ul>
				</div>
			</div>
		</nav>

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-7 text">
                            <h1><strong>违章处理</strong> 中心|用户注册</h1>
                            <div class="description">
                            	<p>
	                            	（1）该系统有管理员和用户（主要为驾驶员）两种权限。
（2）后台管理员有操作所有模块的权限：进行对车辆档案（车辆信息、违章信息、驾驶员信息、维修信息、车辆报废），用户管理（用户身份和状态的修改、用户查找、用户头像管理），前台公告，前台信息模块（交通新闻，安全常识，政策法规），前台友情链接的增删改查等，还可以通过留言板与用户进行互动。
	                            	
	                            	</p>
                            </div>
                            <div class="top-big-link">
                            	<a class="btn btn-link-1" href="<%=basePath%>backendui/login">登录页面</a>
                            	<a class="btn btn-link-2" href="<%=basePath%>">返回首页</a>
                            </div>
                        </div>
                        <div class="col-sm-5 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>创建平台账号</h3>
                            		<p>请输入您的注册信息:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-pencil"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="<%=basePath %>backendui/reg" method="post" class="registration-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-first-name">账号</label>
			                        	<input type="text" name="username" placeholder="账号" class="form-first-name form-control" id="form-first-name">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-last-name">密码</label>
			                        	<input type="text" name="password" placeholder="密码" class="form-last-name form-control" id="form-last-name">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-last-name">确认密码</label>
			                        	<input type="text" name="password2" placeholder="确认密码" class="form-last-name form-control" id="form-last-name">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-last-name">电话</label>
			                        	<input type="text" name="tel" placeholder="电话" class="form-last-name form-control" id="form-last-name">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-last-name">邮箱</label>
			                        	<input type="text" name="email" placeholder="邮箱" class="form-last-name form-control" id="form-last-name">
			                        </div>
			                       
			                        <button type="submit" class="btn">下一步!</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="<%=basePath %>static/login/assets/js/jquery-1.11.1.min.js"></script>
        <script src="<%=basePath %>static/login/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=basePath %>static/login/assets/js/jquery.backstretch.min.js"></script>
        <script src="<%=basePath %>static/login/assets/js/retina-1.1.0.min.js"></script>
        <script src="<%=basePath %>static/login/assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="<%=basePath %>static/login/assets/js/placeholder.js"></script>
        <![endif]-->
<script>
jQuery(document).ready(function() {
	
    /*
        Fullscreen background
    */
    $.backstretch("<%=basePath %>static/login/assets/img/backgrounds/1.jpg");
});
</script>

<c:if test="${!empty state}">
		
			<script>
			swal("恭喜您","注册成功，请登录","success");
setTimeout(function(){
window.location.href = "<%=basePath%>backendui/login.html";
				}, 1500);
			</script>
		
		

	</c:if>

    </body>

</html>