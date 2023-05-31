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
    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/plugins/visualization/d3/d3.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/plugins/visualization/d3/d3_tooltip.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/plugins/forms/styling/switchery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/plugins/forms/styling/uniform.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/plugins/forms/selects/bootstrap_multiselect.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/plugins/ui/moment/moment.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/plugins/pickers/daterangepicker.js"></script>

    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/core/app.js"></script>
    <script type="text/javascript" src="<%=basePath%>static/0429/sn/assets/js/pages/dashboard.js"></script>
    <!-- /theme JS files -->

</head>

<body>

<!-- Main navbar -->
<div class="navbar navbar-inverse">
    <div class="navbar-header">
        <a class="navbar-brand" href="<%=basePath%>backendui/index">
            <i class="icon icon-car"></i>
            违章处理中心
        </a>

        <ul class="nav navbar-nav visible-xs-block">
            <li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
            <li><a class="sidebar-mobile-main-toggle"><i class="icon-paragraph-justify3"></i></a></li>
        </ul>
    </div>

    <div class="navbar-collapse collapse" id="navbar-mobile">
        <ul class="nav navbar-nav">
            <li><a class="sidebar-control sidebar-main-toggle hidden-xs"><i class="icon-paragraph-justify3"></i></a></li>


        </ul>

        <p class="navbar-text"><span class="label bg-success-400">Online</span></p>

        <ul class="nav navbar-nav navbar-right">

            <li>
                <a href="../">
                    <i class="icon icon-home"></i>
                </a>
            </li>


            <li class="dropdown dropdown-user">
                <a class="dropdown-toggle" data-toggle="dropdown">

                    <span>欢迎您，${user.username } ！</span>
                    <i class="caret"></i>
                </a>

                <ul class="dropdown-menu dropdown-menu-right">



                   

                    <li><a class="dropdown-item" target="mainFrame"
                           href="<%=basePath%>users/users/profile">
                            <i class="fa icon-user"></i>资料信息</a></li>

                    <li> <a class="dropdown-item" target="mainFrame"
                           href="<%=basePath%>users/users/password">
                            <i class="fa icon-wrench"></i>密码设置</a></li>
                        </li>
                  


                    <li class="divider"></li>

                    <li><a href="<%=basePath%>backendui/logout?retUrl=login">
                    <i class="icon-switch2"></i> 安全注销</a></li>
                </ul>
            </li>
        </ul>
    </div>
</div>
<!-- /main navbar -->


<!-- Page container -->
<div class="page-container">

    <!-- Page content -->
    <div class="page-content">

        <!-- Main sidebar -->
        <div class="sidebar sidebar-main">
            <div class="sidebar-content">

                <!-- User menu -->

                <!-- /user menu -->


                <!-- Main navigation -->
                <div class="sidebar-category sidebar-category-visible">
                    <div class="category-content no-padding">
                        <ul class="navigation navigation-main navigation-accordion">

                            <!-- Main -->
                            <li class="navigation-header"><span>操作菜单</span> <i class="icon-menu" title="Main pages"></i></li>
                            <li class="active"><a href="<%=basePath%>backendui/index"><i class="icon-home4"></i> <span>首页 </span></a></li>



 <c:if test="${user.type eq 1 }">  
 
 
  <li class="nav-item nav-dropdown">
                                    <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-puzzle">
                                        </i>
               车辆管理<span class="caret"> </span> </a>
    <ul class="nav-dropdown-items">
        <li> <a target="mainFrame" href="<%=basePath %>autocar/autocar/mylist"> 我的车辆 </a> </li>
        <li> <a target="mainFrame" href="<%=basePath %>autocar/autocar/add">车辆绑定</a> </li>
      </ul>
    </li>                        
                                
                                <li class="nav-item nav-dropdown">
                                    <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-puzzle">
                                        </i>
               车辆维修 <span class="caret"> </span> </a>
      <ul class="nav-dropdown-items">
        <li> <a target="mainFrame" href="<%=basePath %>fixform/fixform/mylist"> 维修信息 </a> </li>
        <li> <a target="mainFrame" href="<%=basePath %>fixform/fixform/add">维修记录 </a> </li>
      </ul>
    </li>
                             
                             
           <li class="nav-item nav-dropdown">
                                    <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-puzzle">
                                        </i>
               违章处理 <span class="caret"> </span> </a>
      <ul class="nav-dropdown-items">
      <li> <a target="mainFrame" href="<%=basePath %>wz/wz/mylist"> 查违章 </a> </li>
        
      </ul>
    </li>           
              
    
    </c:if>
    
    



 <c:if test="${user.type eq 5 }">            
             <li class="nav-item nav-dropdown">
                                    <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-puzzle">
                                        </i>
               用户管理 <span class="caret"> </span> </a>
        <ul class="nav-dropdown-items">
        <li> <a target="mainFrame" href="<%=basePath %>users/users/list"> 用户管理 </a> </li>
        <li> <a target="mainFrame" href="<%=basePath %>users/users/add"> 用户新增 </a> </li>
      </ul>
    </li>    
    
    
    
     <li class="nav-item nav-dropdown">
                                    <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-puzzle">
                                        </i>
               信息类别 <span class="caret"> </span> </a>
      <ul class="nav-dropdown-items">
        <li> <a target="mainFrame" href="<%=basePath %>infocate/infocate/list"> 类别管理 </a> </li>
        <li> <a target="mainFrame" href="<%=basePath %>infocate/infocate/add"> 类别新增 </a> </li>
      </ul>
    </li>
                          
            <li class="nav-item nav-dropdown">
                                    <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-puzzle">
                                        </i> 
               信息管理 <span class="caret"> </span> </a>
       <ul class="nav-dropdown-items">
        <li> <a target="mainFrame" href="<%=basePath %>news/news/list"> 信息管理 </a> </li>
        <li> <a target="mainFrame" href="<%=basePath %>news/news/add"> 发布信息 </a> </li>
      </ul>
    </li>         
    
      <li class="nav-item nav-dropdown">
                                    <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-puzzle">
                                        </i>
               车辆管理 <span class="caret"> </span> </a>
      <ul class="nav-dropdown-items">
      <li> <a target="mainFrame" href="<%=basePath %>users/users/jsy"> 驾驶员数据 </a> </li>
        
        <li> <a target="mainFrame" href="<%=basePath %>autocar/autocar/list"> 车辆数据 </a> </li>
      </ul>
    </li>   
     <li class="nav-item nav-dropdown">
                                    <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-puzzle">
                                        </i>
               违章处理 <span class="caret"> </span> </a>
      <ul class="nav-dropdown-items">
      <li> <a target="mainFrame" href="<%=basePath %>wz/wz/list"> 违章数据 </a> </li>
        
        <li> <a target="mainFrame" href="<%=basePath %>wz/wz/add"> 违章记录 </a> </li>
      </ul>
    </li>   
              
                                
          </c:if>

 <li class="nav-item nav-dropdown">
                                    <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-puzzle">
                                        </i>
               互动交流<span class="caret"> </span> </a>
      <ul class="nav-dropdown-items">
      <li> <a target="mainFrame" href="<%=basePath %>message/message/list"> 在线交流 </a> </li>
      
        
      </ul>
    </li> 


 <li class="nav-item nav-dropdown">
                                    <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-puzzle">
                                        </i>
               账号设置<span class="caret"> </span> </a>
      <ul class="nav-dropdown-items">
      <li> <a target="mainFrame" href="<%=basePath %>users/users/profile"> 资料更新 </a> </li>
      <li> <a target="mainFrame" href="<%=basePath %>users/users/password"> 密码设置 </a> </li>
        
      </ul>
    </li>  

                        </ul>
                    </div>
                </div>
                <!-- /main navigation -->

            </div>
        </div>
        <!-- /main sidebar -->


        <!-- Main content -->
        <div class="content-wrapper">

            <!-- Page header -->
            <div class="page-header">


                <div class="breadcrumb-line">
                    <ul class="breadcrumb">
                        <li><a href="index.php"><i class="icon-home2 position-left"></i> 首页</a></li>
                        <li class="active">欢迎您使用</li>
                    </ul>


                </div>
            </div>
            <!-- /page header -->


            <!-- Content area -->
            <div class="content">

                <!-- Main charts -->
                <div class="row">
                    <div class="col-lg-12">

                        <iframe name="mainFrame" src="" style="width: 100%;height: 100%;min-height: 700px;border: none;" class="iframe"></iframe>
                    </div>
                </div>
                <!-- /dashboard content -->


                <!-- Footer -->

                <!-- /footer -->

            </div>
            <!-- /content area -->

        </div>
        <!-- /main content -->

    </div>
    <!-- /page content -->

</div>
<!-- /page container -->

</body>
</html>
