<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<!--bootstrap的一些功能需要依赖JQuery, -->
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js" ></script>
		<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		<script>
		window.onload=function(){
		//定时器每秒调用一次fnDate()
		setInterval(function(){
		fnDate();
		},1000);
		}
		//js 获取当前时间
		function fnDate(){
		var oDiv=document.getElementById("div1");
		var date=new Date();
		var year=date.getFullYear();//当前年份
		var month=date.getMonth();//当前月份
		var data=date.getDate();//天
		var hours=date.getHours();//小时
		var minute=date.getMinutes();//分
		var second=date.getSeconds();//秒
		var time=year+"-"+fnW((month+1))+"-"+fnW(data)+" "+fnW(hours)+":"+fnW(minute)+":"+fnW(second);
		oDiv.innerHTML=time;
		}
		//补位 当某个字段不是两位数时补0
		function fnW(str){
		var num;
		str>10?num=str:num="0"+str;
		return num;
		} 
		
</script>
	<style>
			/*控制菜单箭头*/
	.nav-header.collapsed > span.glyphicon-chevron-toggle:before {
	    content: "\e114";
	}
	
	.nav-header > span.glyphicon-chevron-toggle:before {
	    content: "\e113";
	}
	.secondmenu a {
    font-size: 12px;
    color: #4A515B;
    text-align: center;
}

.secondmenu li.active {
    background-color: #eee;
    border-color: #fff;
}
.col-md-2 {
	background-color:#FFFFFF;

}
.col-md-10{
	background-color: gainsboro;
}
	</style>
	</head>
	<body>
		<!--
        	作者：offline
        	时间：2018-09-05
        	描述：导航栏
        -->
		<div class="container-fluid" >
			<jsp:include page="header.jsp"></jsp:include>
			
		</div>
		<!-- 地址导航+搜索框-->
		<div class="container-fluid" style="margin-top: -20px;">
			<div class="row">
				<div class="col-md-2">
					<form class="navbar-form navbar-left">
				        <div class="input-group" style="margin-left: -20px;">
							<input type="text" class="form-control input-lg" style="height: 30px;width: 160px;">
							<span class="input-group-addon btn btn-primary"><a class="glyphicon glyphicon-search"></a></span>
						</div>
				    </form>
				</div>
				<div class="col-md-10">
					<ol class="breadcrumb" style=" margin-top: 7px; margin-right:0px;margin-left:0px;margin-bottom:7px;padding: 0px;font-size: 23px; ">
					  <li><a href="#">系统管理</a></li>
					  <li><a href="#">xxx</a></li>
					  <li class="active">xxx</li>
					</ol>
				
				</div>
			</div>
		</div>
		<!--描述：中间主体-->
        <div class="container-fluid">
        	<div class="row" >
        		<!-- 左侧的导航栏 -->
        		<div class="col-md-2"  style="height: 530px;" >
        			<ul class="main-nav nav nav-tabs nav-stacked" id="main-nav" >
        				<li>
        				<a href="#systemSetting" class="nav-header collapsed" data-toggle="collapse">
                            <i class="glyphicon glyphicon-cog"></i>
                           	 系统管理
                               <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
                        </a>
                        <ul id="systemSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li ><a href="${pageContext.request.contextPath }/user/list" target="menuFrame" ><i class="glyphicon glyphicon-user"></i>&nbsp;住户管理</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-th-list"></i>&nbsp;菜单管理</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-edit"></i>&nbsp;修改密码</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-eye-open"></i>&nbsp;日志查看（待定）</a></li>
                        	
                        </ul>
        				</li>
        				<li>
        				<a href="#DataSetting" class="nav-header collapsed" data-toggle="collapse">
                            <i class="glyphicon glyphicon-cog"></i>
                           	 统计报表
                               <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
                        </a>
                        <ul id="DataSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="#" ><i class="glyphicon glyphicon-user"></i>&nbsp;实时数据</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-th-list"></i>&nbsp;历史数据</a></li>
                            
                        </ul>
        				</li>
        				<li>
        					<a href="${pageContext.request.contextPath }/device_list.jsp" target="menuFrame" class="glyphicon glyphicon-cog">设备管理</a>
        				
        				</li>
        				<li>
        				<a href="#FeedbackSetting" class="nav-header collapsed" data-toggle="collapse">
                            <i class="glyphicon glyphicon-cog"></i>
                           	用户反馈
                               <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
                        </a>
                        <ul id="FeedbackSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="#" ><i class="glyphicon glyphicon-user"></i>&nbsp;报修管理</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-th-list"></i>&nbsp;投诉管理</a></li>
                            
                        </ul>
        				</li>
        				
        			</ul>
        			<h3 align="center" style="color: green;" class=".hidden-xs .hidden-sm">
        				<img src="${pageContext.request.contextPath }/img/timg.jpg"  class="img-circle">
        			<div id="div1">
        				
        			</div>
        			</h3>
        		</div>
        		<div class="col-md-10" style="height: 530px;">
        			
        			<div id="page_content">
			          <iframe id="menuFrame" name="menuFrame" src="show_index" style="overflow:visible;" scrolling="yes" frameborder="no" width="100%" height="500px; float:left">
						
					  </iframe>
			 		</div>
			 		
        			<div class="footer"  align="center">
        				<span>Copyright© xxx物联网智能系统 版权所有</span>
        			</div>
        		</div>
        	</div>
        	
        </div>
	</body>
</html>
