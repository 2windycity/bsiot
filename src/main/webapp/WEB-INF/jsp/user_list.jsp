<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<style type="text/css">
.black_overlay{
display: none;
position: absolute;
top: 0%;
left: 0%;
width: 100%;
height: 100%;
background-color: black;
z-index:1001;
-moz-opacity: 0.8;
opacity:.80;
filter: alpha(opacity=80);
}
.white_content {
display: none;
position: absolute;
top: 10%;
left: 10%;
width: 80%;
height: 80%;
border: 16px solid lightblue;
background-color: white;
z-index:1002;
overflow: auto;
}
.tr1 th{
	text-align: center;
}
.col-md-2{
	margin-top: 20px;
}
</style>
<script type="text/javascript">
//弹出隐藏层并显示点击用户的信息
function ShowDiv1(show_div,bg_div,userID){

document.getElementById(show_div).style.display='block';
document.getElementById(bg_div).style.display='block' ;
var bgdiv = document.getElementById(bg_div);
bgdiv.style.width = document.body.scrollWidth;
// bgdiv.style.height = $(document).height();
$("#"+bg_div).height($(document).height());
};
function ShowDiv(show_div,bg_div,userID){

document.getElementById(show_div).style.display='block';
document.getElementById(bg_div).style.display='block' ;
var bgdiv = document.getElementById(bg_div);
bgdiv.style.width = document.body.scrollWidth;
// bgdiv.style.height = $(document).height();
$("#"+bg_div).height($(document).height());

$.ajax({
	url:"${pageContext.request.contextPath}/user/listUserByBid",
	type:"GET",
	data:{"userId":userID},
	dataType:'json',
	success:function(e){
		var sel = document.getElementById('buildId2');
		$("#userId2").val(e.userId);
		$("#userName2").val(e.userName);
		$("#sex2").val(e.sex);
		$("#age2").val(e.age);
		$("#userPhone2").val(e.userPhone);
		$("#homeNum2").val(e.homeNum);
		sel.options[0].value=e.buildId;
		sel.options[0].text=e.buildId+"栋";
	},
	error:function(e){
		alert("错误，请重试");
	}
});
};
//关闭弹出层
function CloseDiv(show_div,bg_div)
{
document.getElementById(show_div).style.display='none';
document.getElementById(bg_div).style.display='none';
};
//添加用户信息的异步函数
function addUser(){
	var selindex=document.getElementById("buildId1").selectedIndex;
	var jsondata={
			"userId":null,
			"userName":document.getElementById("userName1").value,
			"sex":document.getElementById("sex1").value,
			"age":document.getElementById("age1").value,
			"userPhone":document.getElementById("userPhone1").value,
			"homeNum":document.getElementById("homeNum1").value,
			"buildId":document.getElementById("buildId1").options[selindex].value,
	};
			
	$.ajax({
		url:"${pageContext.request.contextPath}/user/adduser",
		type:"POST",
		data:JSON.stringify(jsondata),
		contentType:"application/json",
		dataType:"json",
		success:function(data){
			
				alert("添加成功");
				
		},
		error:function(){
			alert("添加失败！");
		}
	});
};

//根据用户ID删除用户信息
function DeleteUser(uid){
	
	if(confirm("确认删除该用户信息?")){
		
		$.ajax({
			url:"${pageContext.request.contextPath}/user/deleteuser",
			type:"POST",
			dataType:"json",
			data:{"userId":uid},
			success:function(data){
				alert(data.status);
				location.reload(true);
			},
			error:function(){
				alert("删除失败");
			}
		});
	}else{
		return;
	}
		
	
}
//根据用户ID修改信息
function UpdateUser(){
	if(confirm("确认保存？")){
		var selindex=document.getElementById("buildId2").selectedIndex;
		var jsondata1={
				"userId":document.getElementById("userId2").value,
				"userName":document.getElementById("userName2").value,
				"sex":document.getElementById("sex2").value,
				"age":document.getElementById("age2").value,
				"userPhone":document.getElementById("userPhone2").value,
				"homeNum":document.getElementById("homeNum2").value,
				"buildId":document.getElementById("buildId2").options[selindex].value,
		};
		$.ajax({
			url:"${pageContext.request.contextPath}/user/updateuser",
			type:"POST",
			contentType:"application/json",
			data:JSON.stringify(jsondata1),
			dataType:"json",
			success:function(data){
				alert(data.status);
				window.location.reload();
			},
			error:function(){
				alert("保存失败")
			}
			
		});
	}else{
		return;
	}
}
</script>
<div class="container-fluid">
	<div class="row" style="height: 425px;border: solid 1px ;color: lightgray;">
		
		<table class="table table-bordered table-responsive table-striped" style="text-align: center;border: solid 1px;">
		  <caption style="text-align: center; font-size: 25px;">用户信息管理</caption>
		  <thead>
		    <tr class="tr1" style="background-color:#00B1DB; color: lightgray;">
		      <th>ID</th>
		      <th>昵称</th>
		      <th>性别</th>
		      <th>年龄</th>
		      <th>更多</th>
		      <th>操作</th>
		    </tr>
		  </thead>
		  <tbody>
	
		  <c:forEach items="${userlist}" var="list" varStatus="u">
		  	<tr>
		      <td>${list.userId}</td>
		      <td>${list.userName}</td>
		      <td>${list.sex}</td>
		      <td>${list.age}</td>
		      <td>更多资料></td>
		      <td>
		      	
		      	<button class="glyphicon glyphicon-pencil" onclick="ShowDiv('MyDiv','fade','${list.userId}')"></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		      	<button class="glyphicon glyphicon-trash" onclick="DeleteUser('${list.userId}')"></button>
		      	
		      </td>
		    </tr>
		  </c:forEach>
		
		    
		
		  </tbody>
		  
		</table>
	</div>
	<div class="row">
		<div class="col-md-2">
			<a class="btn  btn btn-danger glyphicon glyphicon-trash" href="#" role="button">&nbsp;批量删除</a>
		</div>
		<div class="col-md-2">
			<a class="btn btn-info glyphicon glyphicon-plus" href="#" role="button" onclick="ShowDiv1('MyDiv1','fade1')">&nbsp;新增</a>
		</div>
		<div class="col-md-8">
			<nav aria-label="Page navigation">
			  <ul class="pagination">
			   <li>
			      <a method="GET" href="${pageContext.request.contextPath }/user/list?page=${pageInfo.firstPage }" aria-label="第一页">
			        <span aria-hidden="true">第一页</span>
			      </a>
			    </li>
			    <li>
			      <a method="GET" href="${pageContext.request.contextPath }/user/list?page=${pageInfo.prePage }" aria-label="上一页">
			        <span aria-hidden="true">上一页</span>
			      </a>
			    </li>
			    
			    <c:forEach begin="1" end="${pageInfo.pages }" var="p">
				    <c:if test="${p == pageInfo.pageNum}">
				    	<li><a style="background-color:#00B1DB" href="${pageContext.request.contextPath }/user/list?page=${p}">${p}</a></li>
				    </c:if>
				    
			    	 <c:if test="${p != pageInfo.pageNum}">
				    	<li><a href="${pageContext.request.contextPath }/user/list?page=${p}">${p}</a></li>
				    </c:if>
			     
			    </c:forEach>
			   
			    <li>
			    	<c:if test="${pageInfo.nextPage!=null }">
			    		<a method="GET" href="${pageContext.request.contextPath }/user/list?page=${pageInfo.nextPage }" aria-label="下一页">
			        		<span aria-hidden="true">下一页</span>
			      		</a>
			    	</c:if>
			    	
			     
			      <c:if test="${pageInfo.nextPage==null }">
			      	 <a method="GET" href="${pageContext.request.contextPath }/user/list?page=${pageInfo.lastPage }" aria-label="下一页">
			        	<span aria-hidden="true">下一页</span>
			     	 </a>
			      </c:if>
			    </li>
			     <li>
			      <a method="GET" href="${pageContext.request.contextPath }/user/list?page=${pageInfo.lastPage }" aria-label="末页">
			        <span aria-hidden="true">末页</span>
			      </a>
			    </li>
			    <li>
			      <a href="#" aria-label="总页数">
			        <span aria-hidden="true">共${pageInfo.pages }页</span>
			      </a>
			    </li>
			  </ul>
			</nav>
		</div>
	</div>
</div>
<!--弹出层时背景层DIV-->
<div id="fade" class="black_overlay">
	
</div>
<!--修改页面弹出用户信息框-->
<div id="MyDiv" class="white_content">
<div style="text-align: right; cursor: default; height: 0px; " id="move">
</div>

	<form id="myform2" action="" method="" style="text-align: center;">
		<table class="table table-striped" cellspacing="" cellpadding="6" style="text-align: center;">
			<caption style="text-align: center; font-size: 20px;color: white; background-color:#428BCA;">用户信息修改</caption>
			<tr>
				<td>住户ID</td>
				<td>
					<input id="userId2" name="userId" class="form-control" type="text" placeholder="设备号" readonly>
				</td>
			</tr>
			<tr>
				<td>昵称</td>
				<td>
					<input  type="text" class="form-control" id="userName2" name="userName">
					
				</td>
			</tr>
			<tr>
				<td>性别</td>
				<td>
					<input type="text" class="form-control" id="sex2" name="sex">
				</td>
			</tr>
			<tr>
				<td>年龄</td>
				<td>
					<input type="text" class="form-control" id="age2" name="age">
				</td>
			</tr>
			<tr>
				<td>手机号码</td>
				<td>
					<input type="text" class="form-control" id="userPhone2" name="userPhone">
				</td>
			</tr>
			<tr>
				<td>楼座号</td>
				<td>
					
					<select id="buildId2" name="buildId">
						<option value=""></option>>
						<option value="1">1栋</option>
						<option value="2">2栋</option>
						<option value="3">3栋</option>
						<option value="4">4栋</option>
					</select>
					
				</td>
				
			</tr>
			<tr>
				<td>门牌号</td>
				<td><input type="text" class="form-control" id="homeNum2" name="homeNum"></td>
			</tr>
		</table>
		
		<button class="btn btn-info" type="submit" onclick="UpdateUser()">保存</button>&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="btn btn-warning" href="#" role="button" onclick="CloseDiv('MyDiv','fade')">关闭</a>

	</form>
	
</div>
<!--
	新增按钮弹出页面	
-->
<!--弹出层时背景层DIV-->
<div id="fade1" class="black_overlay">
	123
</div>
<!--弹出用户信息框-->
<div id="MyDiv1" class="white_content">
<div style="text-align: right; cursor: default; height: 0px; " id="move">
</div>

	<form id="myform1" action="" method="" style="text-align: center;">
		<table class="table table-striped" cellspacing="" cellpadding="6" style="text-align: center;">
			<caption style="text-align: center; font-size: 20px;color: white; background-color:#428BCA;">新增用户</caption>
			<tr style="display:none">
				<td>设备号</td>
				<td>
					<input type="text" class="form-control" id="userId1" name="userId">
					
				</td>
			</tr>
			<tr>
				<td>昵称</td>
				<td>
					<input type="text" class="form-control" id="userName1" name="userName">
					
				</td>
			</tr>
			<tr>
				<td>性别</td>
				<td>
					<input type="text" class="form-control" id="sex1" name="sex">
				</td>
			</tr>
			<tr>
				<td>年龄</td>
				<td>
					<input type="text" class="form-control" id="age1" name="age">
				</td>
			</tr>
			<tr>
				<td>手机号码</td>
				<td>
					<input type="text" class="form-control" id="userPhone1" name="userPhone">
				</td>
			</tr>
			<tr>
				<td>楼座号</td>
				<td>
					
					<select id="buildId1" name="buildId">
					  <option  value="1">1栋</option>
					  <option value="2">2栋</option>
					  <option value="3">3栋</option>
					  <option value="4">4栋</option>
					</select>
					
				</td>
				
			</tr>
			<tr>
				<td>门牌号</td>
				<td><input type="text" class="form-control" id="homeNum1" name="homeNum1"></td>
			</tr>
		</table>
		
		<button class="btn btn-info" type="submit" onclick="addUser()">保存</button>&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="btn btn-warning" href="#" role="button" onclick="CloseDiv('MyDiv1','fade1')">关闭</a>

	</form>
	
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js" ></script>
		<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>