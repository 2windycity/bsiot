<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<div class="row">
				
				<nav class="navbar navbar-default">
				  <div class="container-fluid" style="background-color:#00B1DB;margin-top: 10px;color: #FFFFFF;">
				    <!-- Brand and toggle get grouped for better mobile display -->
				    
				    <div class="navbar-header col-md-8,col-lg-8" >
				     <a class="navbar-brand" href="#" style="font-size: 25px; color: #FFFFFF;">xx出品|</a>
				     <a class="navbar-brand" href="#" style="font-size: 25px;color: #FFFFFF;">智能小区后台管理系统</a>
				     
				    </div>
				
				    <!-- Collect the nav links, forms, and other content for toggling -->
				    <div class="collapse navbar-collapse col-md-4,col-lg-4"  id="bs-example-navbar-collapse-1">
				      
				     
				      <ul class="nav navbar-nav navbar-right">
				      <c:if test="${sessionScope.admin==null }">
				      	<span class="glyphicon glyphicon-user" aria-hidden="true">游客</span>  
				      	<button type="button" class="btn btn-default navbar-btn" href="${pageContext.request.contextPath}/admin/loginindex">登录</button>
				      	<button type="button" class="btn btn-default navbar-btn">注册</button>
				      </c:if>
				      <c:if test="${sessionScope.admin!=null }">
				      	<span class="glyphicon glyphicon-user" aria-hidden="true">${sessionScope.admin.username }&nbsp;您好</span>  
				      	<button type="button" class="btn btn-default navbar-btn">注销</button>
				      </c:if>
				      
				      </ul>
				    </div><!-- /.navbar-collapse -->
				  </div><!-- /.container-fluid -->
				</nav>
				
			</div>
