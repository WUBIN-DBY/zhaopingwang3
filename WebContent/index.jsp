<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>招聘网后台管理中心</title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>   
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="images/y.jpg" class="radius-circle rotate-hover" height="50" alt="" />招聘网后台管理中心</h1>
  </div>
  <div class="head-l"><a class="button button-little bg-green" href="" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;<a href="##" class="button button-little bg-blue"><span class="icon-wrench"></span> 清除缓存</a> &nbsp;&nbsp;<a class="button button-little bg-red" href="login.jsp"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>基本设置</h2>
  <ul style="display:block">
    <li><a href="info.jsp" target="right"><span class="icon-caret-right"></span>网站设置</a></li>
    <li><a href="pass.jsp" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
  </ul>   
  <h2><span class="icon-pencil-square-o"></span>用户信息管理</h2>
  <ul>
    <li><a href="YongHu?method=listAll" target="right"><span class="icon-caret-right"></span>用户信息列表</a></li>
    <li><a href="YongHu?method=add" target="right"><span class="icon-caret-right"></span>添加用户信息</a></li>
    <li><a href="YongHu?method=update" target="right"><span class="icon-caret-right"></span>修改用户信息</a></li>
  </ul> 
  
  
   
   <!--  <h2><span class="icon-pencil-square-o"></span>公司信息管理</h2>
  <ul>
    <li><a href=" target="right"><span class="icon-caret-right"></span>添加公司信息</a></li>
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>删除公司信息</a></li>
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>修改公司信息</a></li>
  </ul> 
      <h2><span class="icon-pencil-square-o"></span>岗位信息管理</h2>
  <ul>
    <li><a href="YongHu target="right"><span class="icon-caret-right"></span>添加岗位信息</a></li>
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>删除岗位信息</a></li>
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>修改岗位信息</a></li>
  </ul> 
      <h2><span class="icon-pencil-square-o"></span>招聘会信息管理</h2>
  <ul>
    <li><a href="YongHu target="right"><span class="icon-caret-right"></span>添加招聘会信息</a></li>
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>删除招聘会信息</a></li>
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>修改招聘会信息</a></li>
  </ul> 
      <h2><span class="icon-pencil-square-o"></span>投递信息管理</h2>
  <ul>
    <li><a href="YongHu target="right"><span class="icon-caret-right"></span>添加投递信息</a></li>
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>删除投递信息</a></li>
    <li><a href="list.html" target="right"><span class="icon-caret-right"></span>修改投递信息</a></li>
  </ul> 
  --> 
  
  
  
</div>

<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="{:U('Index/info')}" target="right" class="icon-home"> 首页</a></li>
  <li><a href="##" id="a_leader_txt">网站信息</a></li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="info.html" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">
<p>来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div>
</body>
</html>