<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="<%=basePath %>static/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="<%=basePath %>static/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="<%=basePath %>static/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="<%=basePath %>static/assets/css/admin.css">
    <link rel="stylesheet" href="<%=basePath %>static/assets/css/app.css">
    <script src="<%=basePath %>static/assets/js/echarts.min.js"></script>
</head>

<body data-type="index">


    





       
          
            <div class="row" style="padding-left:30px;padding-right:30px;">
              
<div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-list"></span> 车辆管理
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="portlet-input input-small input-inline">
                            <div class="input-icon right">
                              
                                </div>
                        </div>
                    </div>


                </div>
                <div class="tpl-block ">

                    <div class="am-g tpl-amazeui-form">


                        <div class="am-u-sm-12 am-u-md-12">
                            
                            <table class="am-table box-shadow am-table-radius am-table-bordered am-table-hover table-main">
                                    <thead>
                                       <tr class="am-danger">
    <th>车辆名称</th>
    <th>登记人</th>
    <th>车牌号</th>
    <th>颜色</th>
    <th>座位数</th>
    <th>价格</th>
    <th>说明</th>
   
    <th>操作</th>
    </tr>
    </thead>
    
    <tbody>
    
   
    <c:forEach items="${requestScope.list }" var="u">
    
      <tr <c:if test="${u.id%2==0 }"> class="am-primary" </c:if> >
      <td>
      ${u.title }
      [${u.sbno }]
      </td> <td>
      ${u.u.username }
      </td>
      <td>
      ${u.carno }
      </td>
       
      <td>
      ${u.color }
      </td>
       <td>
      ${u.seats }
      </td>  <td>
      ${u.price }
      </td>
      <td>
      ${u.description }
      </td>
      
      
      
       
      <td>
      <a class="am-btn am-btn-success" href="<%=basePath%>autocar/autocar/edit?id=${u.id}">
     	更新
     </a>	
    
     
    
     <a class="am-btn am-btn-danger" href="<%=basePath%>autocar/autocar/delete?id=${u.id}&ret=list">
     	删除     	
     </a>
      </td>
      </tr>
   
   </c:forEach>
                                       
                                            
                                       
                                    </tbody>
                                </table>
                            
                            
                        </div>
                    </div>
                </div>

            </div>
    </div>    </div>
    


    <script src="<%=basePath %>static/assets/js/jquery.min.js"></script>
    <script src="<%=basePath %>static/assets/js/amazeui.min.js"></script>
    <script src="<%=basePath %>static/assets/js/iscroll.js"></script>
    <script src="<%=basePath %>static/assets/js/app.js"></script>
    <script src="<%=basePath %>static/layer/layer.js"></script>
  <c:if test="${!empty message}">		
			<script>
			 var btn = $("#showMsgBtn", window.parent.document);
		       var msg = $("#msg", window.parent.document);
		       $(msg).val("${message}");
		       $(btn).click();
			//layer.alert("${message}",{icon: 1});
			</script>
		</c:if>
		
		
</body>

</html>
