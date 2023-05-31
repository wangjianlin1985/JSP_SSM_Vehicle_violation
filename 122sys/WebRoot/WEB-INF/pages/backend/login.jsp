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
    <title>
      违章处理中心
    </title>

    <!-- Global stylesheets -->
    
    <link href="<%=basePath%>static/0429/sn/assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
    <link href="<%=basePath%>static/0429/sn/assets/css/minified/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="<%=basePath%>static/0429/sn/assets/css/minified/core.min.css" rel="stylesheet" type="text/css">
    <link href="<%=basePath%>static/0429/sn/assets/css/minified/components.min.css" rel="stylesheet" type="text/css">
    <link href="<%=basePath%>static/0429/sn/assets/css/minified/colors.min.css" rel="stylesheet" type="text/css">
    <!-- /global stylesheets -->

    <!-- Core JS files -->
    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/plugins/loaders/pace.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/core/libraries/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/core/libraries/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/plugins/loaders/blockui.min.js"></script>
    <!-- /core JS files -->

    <!-- Theme JS files -->
    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/plugins/forms/styling/uniform.min.js"></script>

    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/core/app.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/pages/login.js"></script>
    <!-- /theme JS files -->
    <style>
        .layui-layer-content{color: #333;}
        body{background:url(<%=basePath%>static/login/assets/img/backgrounds/1.jpg);
        background-size:cover;
        }
    </style>

</head>

<body class="bg-slate-800">

<!-- Page container -->
<div class="page-container login-container">

    <!-- Page content -->
    <div class="page-content">

        <!-- Main content -->
        <div class="content-wrapper">

            <!-- Content area -->
            <div class="content" style="padding-top: 150px;">

                <!-- Advanced login -->
                <form action="<%=basePath %>backendui/signin" method="post">
                    <div class="panel panel-body login-form">
                        <div class="text-center">
                            <div  class="icon-object border-warning-400 text-warning-400"><i class="icon-car"></i></div>
                            <h5 class="content-group-lg">违章处理中心
                                <small class="display-block">Enter your credentials</small></h5>
                        </div>

                        <div class="form-group has-feedback has-feedback-left">
                            <input type="text" name="username" required class="form-control" placeholder="账号">
                            <div class="form-control-feedback">
                                <i class="icon-user text-muted"></i>
                            </div>
                        </div>

                        <div class="form-group has-feedback has-feedback-left">
                            <input type="text" name="password" required class="form-control" placeholder="密码">
                            <div class="form-control-feedback">
                                <i class="icon-lock2 text-muted"></i>
                            </div>
                        </div>

                       

                        <div class="form-group login-options">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label class="checkbox-inline">
                                        <input  type="checkbox" class="styled" checked="checked">
                                        记住密码
                                    </label>
                                </div>

                                <div class="col-sm-6 text-right">
                                    <a href="<%=basePath%>backendui/signup">创建平台账号?</a>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn bg-blue btn-block">马上登录 <i class="icon-circle-right2 position-right"></i></button>
                        </div>

                        </div>
                </form>
                <!-- /advanced login -->


                <!-- Footer -->
                <div class="footer text-white">
                    &copy; 2018. <a href="#" class="text-white">
                        违章处理中心 </a>

                    All Rights Reserved
                </div>
                <!-- /footer -->

            </div>
            <!-- /content area -->

        </div>
        <!-- /main content -->

    </div>
    <!-- /page content -->

</div>
<!-- /page container -->
<script src="<%=basePath%>static/0429/js/jquery.min.js"></script>
<script src="<%=basePath%>static/0429/js/layer/layer.min.js"></script>



<c:if test="${!empty inlogin}">
		<c:if test="${user.username!=null}">
			<script>
			layer.alert("登录成功，正在跳转",{icon:1});
setTimeout(function(){
window.location.href = "<%=basePath%>backendui/index.html";
				}, 1500);
			</script>
		</c:if>
		<c:if test="${user.username==null}">
			<script>
			layer.alert("验证失败，用户名或者密码错误",{icon:2});
			</script>
		</c:if>

	</c:if>


</body>
</html>
