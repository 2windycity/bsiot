<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>用户注册</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
	<style type="text/css">
	#bd{
		background-image: url(${pageContext.request.contextPath }/img/bg4.jpg);
		
	}	
	.container{
		
		
	}
	#div1{
		height: 100%;
		background-color: #FFFFFF;
	}	
	</style>
	<body id="bd">
		
		
		<div class="container">
			
		    <div class="col-md-6 col-md-offset-3" id="div1">
		    	<h2 align="center">用户注册</h2>
		        <form action="#" class="">
		
		            <div class="form-group has-feedback">
		                <label for="username">用户名</label>
		                <div class="input-group">
		                    <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
		                    <input id="username" class="form-control" placeholder="请输入用户名" maxlength="20" type="text">
		                    
		                </div>
		
		                <span style="color:red;display: none;" class="tips"></span>
		                <span style="display: none;" class=" glyphicon glyphicon-remove form-control-feedback"></span>
		                <span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
		            </div>
		
		            <div class="form-group has-feedback">
		                <label for="password">密码</label>
		                <div class="input-group">
		                    <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
		                    <input id="password" class="form-control" placeholder="请输入密码" maxlength="20" type="password">
		                </div>
		
		                <span style="color:red;display: none;" class="tips"></span>
		                <span style="display: none;" class="glyphicon glyphicon-remove form-control-feedback"></span>
		                <span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
		            </div>
		
		            <div class="form-group has-feedback">
		                <label for="passwordConfirm">确认密码</label>
		                <div class="input-group">
		                    <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
		                    <input id="passwordConfirm" class="form-control" placeholder="请再次输入密码" maxlength="20" type="password">
		                </div>
		                <span style="color:red;display: none;" class="tips"></span>
		                <span style="display: none;" class="glyphicon glyphicon-remove form-control-feedback"></span>
		                <span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
		            </div>
		
		
		
					<!--
                    
                    
		            <div class="row">
		                <div class="col-xs-7">
		                    <div class="form-group has-feedback">
		                        <label for="idcode-btn">验证码</label>
		                        <div class="input-group">
		                            <span class="input-group-addon"><span class="glyphicon glyphicon-qrcode"></span></span>
		                            <input id="idcode-btn" class="form-control" placeholder="请输入验证码" maxlength="4" type="text">
		                        </div>
		                        <span style="color:red;display: none;" class="tips"></span>
		                        <span style="display: none;" class="glyphicon glyphicon-remove form-control-feedback"></span>
		                        <span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
		                    </div>
		                </div>
		                <div class="col-xs-5" style="padding-top: 30px">
		                    <div id="idcode" style="background: transparent;"></div>
		                </div>
		            </div>
					
		            <div class="form-group has-feedback">
		                <label for="phoneNum">手机号码</label>
		                <div class="input-group">
		                    <span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
		                    <input id="phoneNum" class="form-control" placeholder="请输入手机号码" maxlength="11" type="text">
		                </div>
		                <span style="color:red;display: none;" class="tips"></span>
		                <span style="display: none;" class="glyphicon glyphicon-remove form-control-feedback"></span>
		                <span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
		            </div>
		
		            <div class="row">
		                <div class="col-xs-7">
		                    <div class="form-group has-feedback">
		                        <label for="idcode-btn">校验码</label>
		                        <div class="input-group">
		                            <span class="input-group-addon"><span class="glyphicon glyphicon-qrcode"></span></span>
		                            <input id="idcode-btn" class="form-control" placeholder="请输入校验码" maxlength="6" type="text">
		                        </div>
		                        <span style="color:red;display: none;" class="tips"></span>
		                        <span style="display: none;" class="glyphicon glyphicon-remove form-control-feedback"></span>
		                        <span style="display: none;" class="glyphicon glyphicon-ok form-control-feedback"></span>
		                    </div>
		                </div>
		                <div class="col-xs-5 text-center" style="padding-top: 26px">
		                    <button type="button" id="loadingButton" class="btn btn-primary" autocomplete="off">获取短信校验码</button>
		                </div>
		            </div>
					-->
		            <div class="form-group">
		                <input class="form-control btn btn-primary" id="submit" value="立&nbsp;&nbsp;即&nbsp;&nbsp;注&nbsp;&nbsp;册" type="submit">
		            </div>
		
		            <div class="form-group">
		                <input value="重置" id="reset" class="form-control btn btn-danger" type="reset">
		            </div>
		        </form>
		    </div>
		</div>
	</body>
</html>
