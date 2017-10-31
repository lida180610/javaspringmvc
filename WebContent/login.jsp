<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>笔记本电脑商城 - 登录</title>
		<link rel="stylesheet" href="css/login.css" type="text/css" />
		<style type="text/css">
			.nav{
				height: 131px;
			}
			.leftBody{
				float: left;
				width: 20%;
				height: 400px;
			}
			.centerBody{
				float: left;
				width: 60%;
				padding-top: 50px;
				padding-left: 100px;
				
			}
			.rightBody{
				clear: both;
			}
			.login{
				-moz-border-radius:0 0 7px 7px;
				-webkit-border-radius:7px 7px 7px 7px;
				border-radius:7px 7px 7px 7px;
				border:5px #fff solid;
				box-shadow: 0px 0px 15px #ccc; 
				-webkit-box-shadow: 10px 10px 15px #ccc;
				-moz-box-shadow: 10px 10px 15px #ccc;	
				margin-left: 660px;
				margin-top:85px;
				background-color:white; 
				width: 400px;
				height: 400px;
			}
			.form {
				margin-top:40px;
				margin-left: 30px;
				padding-left: 50px;
				padding-top:30px;
			}
			.form input{
				margin-bottom:35px ; 
				display: block;
			}
			.btnLogin{
				padding-top: 10px;
				border-radius: 25px;
				display: block;
				font-size: 14px;
				color: white;
				width: 250px;
				height: 35px;
				text-align: center;
				text-decoration: none;
				background-color:#ff4c2f; 
				transition: .5s;
				margin-bottom: 15px;
			}
			a:link{
				
			}
			a:hover{
				background-color: red;
			}
			a:visited{

			}
			a:active{

			}
			input{
				border: 0;
				border-bottom: 1px solid;
				border-width: thin;
				border-color: orange;
			}
		</style>
	</head>
	<body onbeforeunload="">
		<div class="nav">
			<img src="img/炫龙logo.png" />
		</div>
		<div class="leftBody">
			
		</div>
		<div class="centerBody">
			<div class="login">
				<form id="formLogin" action="Login" method="get" class="form" style="width: 400px;height: 350px;">
					<input onchange="change()" id="username" name="username" style="height: 50px;width: 250px;border: 0;outline: none;background: transparent;" type="text" placeholder="账号/邮箱" />
					<div style="margin-top: -30px;width: 100%;height: 20px;">
						<p id="usernameReg" style="color: red;display: none;">记住密码 </p>
					</div>
					<input id="password" name="password" style="width: 250px;height: 50px;outline: none;border: 0;background: transparent;" type="password" placeholder="密码 " />
					<a onclick="validate()" class="btnLogin" href="#">登&nbsp;&nbsp;录</a>
					<input name="ck1" style="display: inline;" type="checkbox" /><label>记住密码 </label><a href="#" style="margin-left: 90px;">立即注册</a>
				</form>
			</div>
		</div>
		<div class="rightBody">
			
		</div>
		
	</body>
	<script src="js/login.js"></script>
</html>
