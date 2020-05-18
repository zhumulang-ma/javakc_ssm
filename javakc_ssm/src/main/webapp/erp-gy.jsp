<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>
<%@taglib prefix="javakc" uri="www.javakc.com" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>ERP古城酒业管理系统</title>
    <link rel="shortcut icon" href="<%=path %>/favicon.ico"/>
    <link href="<%=path %>/static/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="<%=path %>/static/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="<%=path %>/static/css/animate.min.css" rel="stylesheet">
    <link href="<%=path %>/static/css/style.min.css?v=4.0.0" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
<div id="wrapper">
    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="nav-close"><i class="fa fa-times-circle"></i>
        </div>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element">
                        <span><img alt="image" class="img-circle" src="<%=path %>/static/img/profile_small.jpg" /></span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<span class="clear">
	                               	<span class="block m-t-xs"><strong class="font-bold">${sessionScope['user'].loginName }</strong></span>
	                                <span class="text-muted text-xs block">${sessionScope['user'].userName }<b class="caret"></b></span>
                                </span>
                        </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a class="J_menuItem" href="<%=path%>/view/system/user/forgetpass.jsp">修改密码</a></li>
                            <li><a class="J_menuItem" href="form_avatar.html">修改头像</a></li>
                            <li><a class="J_menuItem" href="<%=path%>/user/profile.do">个人资料</a></li>
                            <li class="divider"></li>
                            <li><a href="<%=path%>/logout">安全退出</a>
                            </li>
                        </ul>
                    </div>
                    <div class="logo-element">javakc
                    </div>
                </li>
                <javakc:menu role="${sessionScope['user'].roleList[0] }"></javakc:menu>
            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
    <!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
            <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                    <form role="search" class="navbar-form-custom" method="post">
                        <div class="form-group">
                            <input style="font-size: 20px"  type="text" value="ERP酒业管理系统" class="form-control" readonly="true" />
                        </div>
                    </form>
                </div>
                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                            <i class="fa fa-envelope"></i> <span class="label label-warning">16</span>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">

                            <li>
                                <div class="text-center link-block">
                                    <a class="J_menuItem" href="mailbox.html">
                                        <i class="fa fa-envelope"></i> <strong> 查看所有消息</strong>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell"></i> <span class="label label-primary">8</span>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <div>
                                    <a href="mailbox.html">
                                        <i class="fa fa-envelope fa-fw"></i> 您有<span id="message">0</span>条未读消息
                                        <span class="pull-right text-muted small">4分钟前</span>
                                    </a>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div>
                                    <a href="profile.html">
                                        <i class="fa fa-qq fa-fw"></i> 3条新回复
                                        <span class="pull-right text-muted small">12分钟钱</span>
                                    </a>
                                </div>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div class="text-center link-block">
                                    <a class="J_menuItem" href="notifications.html">
                                        <strong>查看所有 </strong>
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown hidden-xs">
                        <a class="right-sidebar-toggle" aria-expanded="false">
                            <i class="fa fa-tasks">主题</i>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="row content-tabs">
            <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i>
            </button>
            <nav class="page-tabs J_menuTabs">
                <div class="page-tabs-content">
                    <a href="javascript:;" class="active J_menuTab" data-id="<%=path %>/index_v1.html">首页</a>
                </div>
            </nav>
            <button class="roll-nav roll-right J_tabRight"><i class="fa fa-forward"></i>
            </button>
            <div class="btn-group roll-nav roll-right">
                <button class="dropdown J_tabClose" data-toggle="dropdown">关闭操作<span class="caret"></span>

                </button>
                <ul role="menu" class="dropdown-menu dropdown-menu-right">
                    <li class="J_tabShowActive"><a>定位当前选项卡</a>
                    </li>
                    <li class="divider"></li>
                    <li class="J_tabCloseAll"><a>关闭全部选项卡</a>
                    </li>
                    <li class="J_tabCloseOther"><a>关闭其他选项卡</a>
                    </li>
                </ul>
            </div>
            <a href="<%=path%>/logout" class="roll-nav roll-right J_tabExit"><i class="fa fa fa-sign-out"></i> 退出</a>
        </div>
        <div class="row J_mainContent" id="content-main">
            <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="<%=path %>/index_v1.html" data-id="<%=path %>/index_v1.html" seamless></iframe>
        </div>
        <div class="footer">
            <div class="pull-right">&copy; 2009-2017 <a href="http://192.168.1.99" target="_blank">javakc blog</a>
            </div>
        </div>
    </div>
    <!--右侧部分结束-->


        <div id="small-chat">
            <span class="badge badge-warning pull-right">4</span>
            <a class="open-small-chat">
                <i class="fa fa-comments"></i>
            </a>
        </div>
    </div>
</div>
<script src="<%=path %>/static/js/jquery.min.js"></script>
<script src="<%=path %>/static/js/bootstrap.min.js"></script>
<script src="<%=path %>/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<%=path %>/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="<%=path %>/static/js/plugins/layer/layer.min.js"></script>
<script src="<%=path %>/static/js/hplus.min.js"></script>
<script src="<%=path %>/static/js/contabs.min.js"></script>
<script src="<%=path %>/static/js/plugins/pace/pace.min.js"></script>
<script>

    //     	$(function()
    //  		{
    //     		var i = 1;
    //  			//定时器2 WebScoket
    //  			setInterval(function()
    // 			{

    // 			}, 3000);
    //  		});

</script>
</body>
</html>
