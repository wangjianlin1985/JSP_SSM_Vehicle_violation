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
        <title>--</title>

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
					<a class="navbar-brand" style="text-indent:0px;background:none;color:#fff;font-weight:bold;" href="<%=basePath%>">--</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="top-navbar-1">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<span class="li-text">
								欢迎您使用本系统，
							</span> 
							<a href="<%=basePath%>backendui/signup"><strong>我要注册,</strong></a> 
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
                            <h1><strong>小区服务</strong> 管理系统|用户登录</h1>
                            <div class="description">
                            	<p>
	                            	本系统是为小区用户提供的平台，包含常规的用户模块。用户通过注册，然后登录本系统。用户的主界面主要包含信息模块、用户信息管理（车辆管理、宠物管理、个人信息管理）、服务中心（报障、申请保洁、医疗帮助）、租售平台、小区商店和活动中心。管理员的模块则是在用户基础上增加对用户的管理和授权，对用户发布的一些请求进行审核的功能。第三，游客模块，未注册的用户可以直接进入游客模块，此模块则涉及信息中心、租售系统界面。当然，游客只有访问的权限</p>
                            </div>
                            <div class="top-big-link">
                            	<a class="btn btn-link-1" href="<%=basePath%>backendui/signup">创建账号</a>
                            	<a class="btn btn-link-2" href="<%=basePath%>">返回首页</a>
                            </div>
                        </div>
                        <div class="col-sm-5 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>在线登录</h3>
                            		<p>请输入您的账号信息:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-pencil"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="<%=basePath %>backendui/signin" method="post" class="registration-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-first-name">账号</label>
			                        	<input type="text" name="username" placeholder="账号" class="form-first-name form-control" id="form-first-name">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-last-name">密码</label>
			                        	<input type="text" name="password" placeholder="密码" class="form-last-name form-control" id="form-last-name">
			                        </div>
			                       
			                        <button type="submit" class="btn">马上登录!</button>
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

<c:if test="${!empty inlogin}">
		<c:if test="${user.username!=null}">
			<script>
			swal("Congratulations","登录成功，正在跳转","success");
setTimeout(function(){
window.location.href = "<%=basePath%>backendui/index.html";
				}, 1500);
			</script>
		</c:if>
		<c:if test="${user.username==null}">
			<script>
			swal("Error","登录失败，请重新输入","error");
			</script>
		</c:if>

	</c:if>

    </body>

</html>