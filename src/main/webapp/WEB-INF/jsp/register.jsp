<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="<%=request.getContextPath() %>/skin/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="<%=request.getContextPath() %>/skin/js/vue.js"></script>
<!--
<script src="<%=request.getContextPath() %>/skin/js/jquery-3.2.1.min.js"></script>
<script src="<%=request.getContextPath() %>/skin/bootstrap/dist/js/bootstrap.min.js"></script>
 -->
<title>注册</title>
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
		<div class="row clearfix" style="margin-top:8%">
			<div class="col-md-3 column">
			</div>
			<div class="col-md-6 column" id="app">
				<div class="panel panel-default">
					<div class="panel-heading form-group">
						<h3 class="panel-title">注册新用户</h3>
					</div>
					<div v-if="alertMsg" class="alert alert-danger alert-dismissable col-sm-offset-1 col-sm-10" style="display:block">
						<button type="button" class="close" v-on:click="closeMsg">
							&times;
						</button>
						<div>
							{{message}}
						</div>
					</div>
					<form class="form-horizontal" role="form" v-on:submit.prevent="onSubmit" action="register.do">
						<div class="form-group">
							<label for="username" class="col-sm-3 control-label">
								用&nbsp&nbsp户&nbsp&nbsp名
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" v-model="username" />
							</div>
							<label for="inputbitian1" class="col-sm-3 control-label" style="text-align:left;padding-left:0">
								（必填）
							</label>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">
								密&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp码
							</label>
							<div class="col-sm-6">
								<input type="password" class="form-control" v-model="password"/>
							</div>
							<label for="inputbitian2" class="col-sm-3 control-label" style="text-align:left;padding-left:0">
								（必填）
							</label>
						</div>
						<div class="form-group">
							<label for="confirmPassword" class="col-sm-3 control-label">
								确认密码
							</label>
							<div class="col-sm-6">
								<input type="password" class="form-control" v-model="confirmPassword"/>
							</div>
							<label for="inputbitian2" class="col-sm-3 control-label" style="text-align:left;padding-left:0">
								（必填）
							</label>
						</div>
						<div class="form-group">
							<label for="email" class="col-sm-3 control-label">
								邮&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp箱
							</label>
							<div class="col-sm-6">
								<input type="email" class="form-control" v-model="email"/>
							</div>
							<label for="inputbitian3" class="col-sm-3 control-label" style="text-align:left;padding-left:0">
								（必填）
							</label>
						</div>
						<div class="form-group">
							<label for="inputPhone" class="col-sm-3 control-label" v-model="phone">
								手&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp机
							</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" id="inputPhone" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-6">
								<button class="btn btn-primary btn-block" v-on:click="register">
									注册
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-3 column">
			</div>
		</div>
	</div>
<script>
var app = new Vue({
	el:'#app',
	data:{
		message:'',
		username:'',
		password:'',
		confirmPassword:'',
		email:'',
		phone:'',
		alertMsg:false
	},
	methods:{
		closeMsg:function(){
			this.alertMsg=false;
		},
		register:function(){
			if(this.username==''){
				this.message='用户名不能为空！';
				this.alertMsg=true;
			}else if(this.password==''){
				this.message='密码不能为空！';
				this.alertMsg=true;
			}else if(this.confirmPassword==''){
				this.message='确认密码不能为空！';
				this.alertMsg=true;
			}else if(this.email==''){
				this.message='邮箱不能为空！';
				this.alertMsg=true;
			}else{
				if(this.password!=this.confirmPassword){
					this.message='确认密码输入不正确！';
					this.alertMsg=true;
				}else{
					//校验用户名是否存在
					//提交表单代码
				}
			}
		}
	}
});
</script>
</body>
</html>
