<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
	</head>
	<script>
		function login(){
			$.post(
				"${pageContext.request.contextPath}/admin/login",
				$("#loginform").serialize(),
				"json"
			);
		}
	</script>
	<style>
      .bd{
      	background-image: url(${pageContext.request.contextPath }/img/bg4.jpg)
      }
      .div1{
      
      	width: 400px;
      	margin: 0 auto;
      	margin-top: 200px;
      }
    </style>
	<body class="bd">
		
			
		
		<div class="div1">
			
				<form id="loginform" action="${pageContext.request.contextPath}/admin/login" method="post">
					<div class="panel panel-primary" align="center">
					  <div class="panel-heading">智能平台管理系统</div>
					  
					  <div class="input-group panel-body" style="width: 50px;">
					  <span class="input-group-addon" id="sizing-addon2">用户名</span>
					  <input id="username" name="username" type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon2"style="width: 210px;">
					  </div>
					<div class="input-group panel-body" style="width: 50px;">
					  <span class="input-group-addon" id="sizing-addon2" style="padding-left: 25px;">密码</span>
					  <input id="password" name="password" type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon2"style="width: 210px;">
					</div>
					<div class="input-group panel-body" style="width: 200px;">
					  <p> 
					  	<button type="submit" class="btn btn-primary">登录</button>
					  	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/common/register.jsp">点击注册</a>
					  </p>
						
					</div>
					
					</div>
					
				</form>
			
			
    	</div>

	</body>
</html>
