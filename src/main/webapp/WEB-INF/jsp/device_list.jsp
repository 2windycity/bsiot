<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<style type="text/css">
.tr1 th{
	text-align: center;
}
.col-md-2{
	margin-top: 20px;
}
</style>
<div class="container-fluid">
	<div class="row" style="height: 425px;border: solid 1px ;color: lightgray;">
		
		<table class="table table-bordered table-responsive table-striped" style="text-align: center;border: solid 1px;">
		  <caption style="text-align: center; font-size: 25px;">设备信息管理</caption>
		  <thead>
		    <tr class="tr1" style="background-color:#00B1DB; color: lightgray;">
		      <th>设备ID</th>
		      <th>名称</th>
		      <th>所处位置</th>
		      <th>节点数</th>
		      <th>更多</th>
		      <th>操作</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <td>19955</td>
		      <td>设备1</td>
		      <td>红绵楼</td>
		      <td>4</td>
		      <td>更多资料></td>
		      <td>
		      	<a href="#" class="glyphicon glyphicon-pencil"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		      	<a href="#" class="glyphicon glyphicon-trash"></a>
		      </td>
		    </tr>
		    <tr>
		      <td>19955</td>
		      <td>设备1</td>
		      <td>红绵楼</td>
		      <td>4</td>
		      <td>更多资料></td>
		      <td>
		      	<a href="#" class="glyphicon glyphicon-pencil"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		      	<a href="#" class="glyphicon glyphicon-trash"></a>
		      </td>
		    </tr>
		  <tr>
		      <td>19955</td>
		      <td>设备1</td>
		      <td>红绵楼</td>
		      <td>4</td>
		      <td>更多资料></td>
		      <td>
		      	<a href="#" class="glyphicon glyphicon-pencil"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		      	<a href="#" class="glyphicon glyphicon-trash"></a>
		      </td>
		    </tr>
		  </tbody>
		  
		</table>
	</div>
	<div class="row">
		<div class="col-md-2">
			<a class="btn  btn btn-danger glyphicon glyphicon-trash" href="#" role="button">&nbsp;批量删除</a>
		</div>
		<div class="col-md-2">
			<a class="btn btn-info glyphicon glyphicon-plus" href="#" role="button">&nbsp;新增</a>
		</div>
		<div class="col-md-8">
			<nav aria-label="Page navigation">
			  <ul class="pagination">
			    <li>
			      <a href="#" aria-label="上一页">
			        <span aria-hidden="true">上一页</span>
			      </a>
			    </li>
			    <li><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li>
			      <a href="#" aria-label="下一页">
			        <span aria-hidden="true">下一页</span>
			      </a>
			    </li>
			  </ul>
			</nav>
		</div>
	</div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js" ></script>
		<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>