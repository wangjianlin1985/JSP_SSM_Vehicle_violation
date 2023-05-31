<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="com.app.utils.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>违章处理中心</title>
<link href="<%=basePath %>static/home/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%=basePath %>static/home/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="<%=basePath %>static/home/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->

<script src="<%=basePath %>static/home/js/jquery.easydropdown.js"></script>
<script src="<%=basePath %>static/home/js/responsiveslides.min.js"></script>

<script src="<%=basePath %>static/home/js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			       
			    });
</script>
<script type="text/javascript" src="<%=basePath %>static/home/js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
<!-- search-scripts -->
					
					<!-- //search-scripts -->
			<link href="<%=basePath %>static/home/homenewlayout.css" rel='stylesheet' type='text/css' />
					<link href="<%=basePath %>static/home/cases.css" rel='stylesheet' type='text/css' />
					
					<style>
					.dreamcrub {
    margin: 2em 0 3em 0;
    border-top: 0px solid #C9C9C9;
    padding: 0.6em 0;
    border-bottom:none;
    }
    .dreamcrub .container{background:#DDD;}
					</style>
</head>
<body>
<header class="">
            <div class="err-top">
                <i class="err-close">
                    <i class="icon-remove">
                    </i>
                </i>
                <div class="err-out">
                    <div class="err-switch">
                        <i class="err-switch-i icon-smile">
                        </i>
                        <i class="err-switch-i icon-frown">
                        </i>
                        <span class="err-content">
                        </span>
                    </div>
                </div>
            </div>
            <div class="nav-left">
            
                <div style="margin:0;padding:0;width:1px;height:1px;overflow: hidden;">
                <a href="<%=basePath %>" style="text-indent:-500px"></a></div>
            
                <a href="<%=basePath %>" class="logo">
                    <img src="<%=basePath %>static/home/lsm.png">
                </a>
            </div>
            <div class="nav-right mw-8">
                <div class="nav-right">
                    
                    	
                    
                    
                    <div class="unauthenticated">
                    
                    
                    
                    <c:if test="${user.username==null}">   
						

 <a href="<%=basePath %>backendui/login" rel="nofollow">
                            登录
                        </a>
                        <span>
                        </span>
                        <a href="<%=basePath %>backendui/signup" rel="nofollow" id="layout-singup">
                            注册
                        </a>


						</c:if>
						 <c:if test="${user.username!=null}">
						
						
						
 <a href="<%=basePath %>backendui/index" rel="nofollow">
                            个人中心
                        </a>
                        <span>
                        </span>
                        <a href="<%=basePath %>backendui/logout?retUrl=index" rel="nofollow" id="layout-singup">
                           注销
                        </a>
						
						 </c:if>
                    
                       
                    </div>
                    
                </div>
                <ul class="nav nav-right">
                    <li id="nav_point">
                        <!-- 活动时的红点 -->
                        <a href="<%=basePath %>" style="color:#fff;" class="badge-red">
                                               
                            首页
                        </a>
                           </li>
                           
                           <c:forEach items="${requestScope.clist }" var="u" varStatus="st">
								<li><a style="color:#fff;" class="badge-red" href="<%=basePath %>app/news?cateId=${u.id}">${u.title }</a></li>
								</c:forEach>
                           
                    
                    <li class="langLi">
                        <div onclick="javascript:location.href='<%=basePath %>backendui/index';"
                         class="" id="headerLang" lang="en-US">违章</div>
                    </li>

                </ul>
            </div>
        </header>
        
        <div style="background:url(<%=basePath %>static/home/12.jpg);background-size:cover;" class="section section-cases section1">
    <!-- <div class="mask"></div> -->
    
    <!-- 默认内容 start -->
    <h1 class="section-title">
      违章处理中心
    </h1>
    <h5 class="section-subtitle" style="margin-bottom:70px;">
        （1）该系统有管理员和用户（主要为驾驶员）两种权限。
（2）后台管理员有操作所有模块的权限：进行对车辆档案（车辆信息、违章信息、驾驶员信息、维修信息、车辆报废），用户管理（用户身份和状态的修改、用户查找、用户头像管理），前台公告，前台信息模块（交通新闻，安全常识，政策法规），前台友情链接的增删改查等，还可以通过留言板与用户进行互动。
    </h5>
    <span onclick="javascript:location.href='<%=basePath %>backendui/index';" class="section-btn">
        开始使用
    </span>
    <!-- 默认内容 end -->
    <!-- 展开内容 start -->
    
</div>



    <!-- header-section-starts -->
	
	<!-- header-section-ends -->
    