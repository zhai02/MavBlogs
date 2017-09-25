<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="<%=request.getContextPath() %>/skin/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="<%=request.getContextPath() %>/skin/js/jquery-3.2.1.min.js"></script>
<!-- 
<script src="<%=request.getContextPath() %>/skin/js/angular.min.js"></script>
 -->
<script src="<%=request.getContextPath() %>/skin/js/vue.js"></script>
<script src="<%=request.getContextPath() %>/skin/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- 
<script src="<%=request.getContextPath() %>/skin/bootstrap/dist/js/scripts.js"></script>
 -->
<title>登录</title>
</head>
<body background="<%=request.getContextPath() %>/skin/img/login_bg.jpg">
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="padding-left:10%">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">MavBlog</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="#">首页</a>
						</li>
					</ul>
				</div>
				
			</nav>
		</div>
	</div>
	<div class="row" style="margin-top:10%">
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
			<div class="panel panel-default">
				<div class="panel-heading form-group">
					<h3 class="panel-title">登录</h3>
				</div>
				<form class="form-horizontal" role="form" action="login.do">
					<div class="form-group">
						<label for="inputEmail3" class="col-sm-3 control-label">
							用户名
						</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" id="inputEmail3"/>
						</div>
					</div>
					<div class="form-group">
						 
						<label for="inputPassword3" class="col-sm-3 control-label">
							密码
						</label>
						<div class="col-sm-7">
							<input type="password" class="form-control" id="inputPassword3" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-3 col-sm-7">
							<div class="checkbox">
								 
								<label>
									<input type="checkbox" /> 记住我
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-8">
							 
							<button type="submit" class="btn btn-primary btn-block">
								登录
							</button>
							<a class="btn btn-default btn-block" href="forRegister.do">
								注册
							</a>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="col-md-4">
		</div>
	</div>
</div>
</body>
</html>