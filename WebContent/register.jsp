<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>注册页面</title>
		<link rel="stylesheet" href="css/bootstrap.css" />
		<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
		<link rel="stylesheet" href="css/register.css" />
		<style >
			.form{
				background-color: #00CCFF;
				margin-top: 40px;
				margin-left: 500px;
				padding-left: 50px;
				padding-top: 30px;
			}
			.btnregist{
				border-radius: 25px;
				display: block;
				margin-left: 200px;
				margin-top: 50px;
				width: 270px;
				height: 45px;
				text-align: center;
				text-decoration: none;
				background-color: #3366FF;
				font-size: 25px;
				padding-top: 5px;
				color: #33CC99;
				margin-bottom: 15px;
			}
		</style>
	</head>
	<body>		
		<div style="height: 100px;">
			<img src="img/炫龙logo.png"/>
		</div>
		<div style="height: 500px;">
			<form action="Register" method="post" class="form" style="font-size: 20px;width: 800px;">
			<h1 style="font-size: 30px;margin-left: 200px;">欢迎注册本网站</h1>
			
			<input id="username" name="username" style="margin-left: 60px; margin-top: 50px;  width: 600px;height: 50px;outline: none;background: transparent;" type="text" placeholder="请输入您要注册的账号：" />
			<div style="margin-top: -30px;width: 100%;height: 20px;"><p id="usernameReg" style="color: red;display: none;">禁止输入汉字</p></div>
			<input id="password"name="password" style="margin-left: 60px; margin-top: 50px;  width: 600px;height: 50px;outline: none;background: transparent;" type="password" placeholder="请输入您要注册的密码：" />
			<br />
			<input  class="btnregist" type="submit"/>&nbsp;注&nbsp;&nbsp;册
			</form>
			
		</div>
	
	</body>
	<script src="js/jQuery.js"></script>
	<script src="js/bootstrap.js"></script>
</html>
