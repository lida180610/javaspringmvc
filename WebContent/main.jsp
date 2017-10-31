<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>笔记本电脑商城-主页</title>
		<link rel="stylesheet" href="css/mainunder.css" />
		<link rel="stylesheet" href="css/main.css" />
		<link href="css/bootstrap.css" rel="stylesheet" />
		<link href="http://www.bootcss.com/p/buttons/css/buttons.css" rel="stylesheet" />
		<style type="text/css">			
			.list li{
				margin-bottom: 10px;
			}
			.tuijian li{
				float: left;
				margin-right: 30px;
			}
			.tuijian li img{
				margin-bottom: 10px;
			}
		</style>
	</head>

	<body>
		<div class="row">
			<div class="center-block col-md-12 " style="height: 50px;">
				<nav class="navbar navbar-default navbar-inverse">
				<div class="container-fluid" >
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
						<img src="img/炫龙logo.png" />
						<a class="navbar-brand" href="#">笔记本电脑商城</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active">
								<a href="main.jsp">首页 <span class="sr-only">(current)</span></a>
							</li>
							<li>
								<a href="Computer?currPage=1">所有商品</a>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">分类<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li>
										<a href="#">Action</a>
									</li>
									<li>
										<a href="#">Another action</a>
									</li>
									<li>
										<a href="#">Something else here</a>
									</li>
									<li role="separator" class="divider"></li>
									<li>
										<a href="#">Separated link</a>
									</li>
									<li role="separator" class="divider"></li>
									<li>
										<a href="#">One more separated link</a>
									</li>
								</ul>
							</li>
						</ul>
						<form class="navbar-form navbar-left">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="热门商品:毁灭者、炎魔">
							</div>
							<button type="submit" style="width: 150px;" class="btn btn-danger">搜索</button>
						</form>
						<ul class="nav navbar-nav navbar-right">
							<c:if test="${ user != null }">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">亲爱的${user.username },欢迎您 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li>
										<a href="addshop.jsp">添加商品</a>
									</li>
									<li>
										<a href="deleteshop.jsp">下架商品</a>
									</li>
									<li>
										<a href="change.jsp">修改密码</a>
									</li>
									<li role="separator" class="divider"></li>
									<li>
										<a href="Logout">注销用户</a>
									</li>
								</ul>
							</li>
							</c:if>
							<c:if test="${user == null }">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">操作中心 <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li>
										<a href="login.jsp">登录</a>
									</li>
									<li>
										<a href="register.jsp">注册</a>
									</li>
									<li role="separator" class="divider"></li>
									<li>
										<a href="#">客服中心</a>
									</li>
								</ul>
							</li>
							</c:if>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12" style="border: 1px solid;height: 598px;">
				<img src="img/08.jpg" />
			</div>
		</div>
		<div class="row" style="background-color: #000000;margin-top: 10px;">
			<div class="col-md-3" style="border: 1px solid;height: 319px;">
				<font size="7" style="display: inline;color: white;">店铺热销</font>
				<hr style="margin: 10px;" />
				<ul class="list" style="list-style: none;color: white;font-size: 35px;">					
					<li>炎魔T50+</li>
					<li>炎魔T50 Ti+</li>
					<li>炎魔T1 Ti+</li>
					<li>炎魔T1-Pro+</li>
				</ul>
			</div>
			<div class="col-md-5" style="border: 1px solid;height: 319px;">
				<img style="margin-top: 10px;" id="imgs" class="img-responsive" src="" />
				
				
			</div>
			<div class="col-md-4" style="border: 1px solid;height: 319px;">
				<img src="img/13.jpg" />
			</div>
		</div>
		<div class="row" style="margin-top: 10px;">
			<div class="col-md-3" style="border: 1px solid;height: 400px;background-color: black;">
				<font size="6" style="display: inline;color: white;">电脑分类</font>
				<hr style="margin: 8px;" />
				<ul class="list" style="list-style: none;color: white;font-size: 15px;">					
					<li>七代CPU</li>
					<li>桌面CPU</li>
					<li>10系显卡</li>
					<li>发烧游戏本</li>
					<li>炎魔系列</li>
					<li>毁灭者系列</li>
					<li>高清IPS</li>
					<li>高端旗舰本</li>
				</ul>
			</div>
			<div class="col-md-7" style="border: 1px solid;height: 400px;background-color: #333333;">
				<font size="4" style="display: inline;color: white;">店长推荐</font>
				<ul class="tuijian" style="list-style: none; padding: 0px;margin: 0px;">
					<li>
						<img src="img/shopping01.jpg" />
						<p style="color: red;">¥5199.00</p>
						<a style="display: block;"><font size="1">
						炫龙 毁灭者 DC Pro i5笔记本4G独显<br/>GTX1050 i5手提游戏本电脑
						</font></a>
					</li>
					<li>
						<img src="img/shopping02.jpg" />
						<p style="color: red;">¥7399.00</p>
						<a style="display: block;"><font size="1">
						炫龙 炎魔T50 i7七代手提笔记本电脑<br/>GTX1050独显轻薄便携游戏本
						</font></a>
					</li>
					<li>
						<img src="img/shopping03.jpg" />
						<p style="color: red;">¥11699.00</p>
						<a style="display: block;"><font size="1">
						炫龙 黑曼巴V87 Pro笔记本桌面级处理器<br/>GTX1070十系独显游戏本
						</font></a>
					</li>
					<li >
						<img src="img/shopping04.jpg" />
						<p style="color: red;">¥5099.00</p>
						<a style="display: block;"><font size="1">
						炫龙 毁灭者X55 i7游戏本GTX1050独显<br /> 15.6吋学生超薄笔记本电脑
						</font> </a>
					</li>
				</ul>
				
			</div>
			<div class="col-md-2" style="border: 1px solid;height: 400px;padding: 10px;background-color: #333333;">
				<div style="width: 111px;height: 100px;">
					<font size="3" style="display: inline;color: white;">键盘推荐</font>
					<hr style="margin: 10px;" />
					<img src="img/jianpan01.jpg" />
					<p style="color: red;">¥99.00</p>
					<a style="display: block;"><font size="1">
					炫龙 龙魂机甲彩色游戏背光键盘
					</font></a>
				</div>
				
			</div>
		</div>
		<footer style="margin-top: 10px;" class=main-footer>
			<div class=container>
				<div class=row>
					<div class=col-sm-4>
						<div class=widget>
							<h4 class=title>最新文章</h4>
							<div class="content recent-post">
								<div class=recent-single-post>
									<a href=/post/laravel-5-5-will-be-the-next-lts-release class=post-title>Laravel 5.5 将是下一个 LTS 版本，预计 7/8 月份发布</a>
									<div class=date>2017年02月20日</div>
								</div>
								<div class=recent-single-post>
									<a href=/post/laravel-5-4-is-now-released class=post-title>Laravel 5.4 版本正式发布</a>
									<div class=date>2017年01月24日</div>
								</div>
								<div class=recent-single-post>
									<a href=/post/benchmarking-laravel-symfony-zend class=post-title>Laravel 之父：让 Laravel、Symfony、 Zend 来一场公平的性能测试</a>
									<div class=date>2017年01月12日</div>
								</div>
							</div>
						</div>
					</div>
					<div class=col-sm-4>
						<div class=widget>
							<h4 class=title>标签云</h4>
							<div class="content tag-cloud">
								<a href=/tag-cloud/>...</a>
							</div>
						</div>
					</div>
					<div class=col-sm-4>
						<div class=widget>
							<h4 class=title>友链</h4>
							<div class="content tag-cloud friend-links">
								<a href=http://www.bootcss.com title=Bootstrap中文网 onclick="_hmt.push(['_trackEvent', 'link', 'click', 'bootcsscom'])" target=_blank>Bootstrap中文网</a>
								<a href=http://www.bootcdn.cn title=开放CDN服务 onclick="_hmt.push(['_trackEvent', 'link', 'click', 'bootcdncn'])" target=_blank>开放CDN服务</a>
								<a href=http://www.gruntjs.net title=Grunt中文网 onclick="_hmt.push(['_trackEvent', 'link', 'click', 'gruntjsnet'])" target=_blank>Grunt中文网</a>
								<a href=http://www.gulpjs.com.cn/ title=Gulp中文网 onclick="_hmt.push(['_trackEvent', 'link', 'click', 'gulpjscomcn'])" target=_blank>Gulp中文网</a>
								<hr>
								<a href=http://lodashjs.com/ title=Lodash中文文档 onclick="_hmt.push(['_trackEvent', 'link', 'click', 'lodashjscom'])" target=_blank>Lodash中文文档</a>
								<a href=http://www.jquery123.com/ title=jQuery中文文档 onclick="_hmt.push(['_trackEvent', 'link', 'click', 'jquery123com'])" target=_blank>jQuery中文文档</a>
								<hr>
								<a href=https://www.upyun.com/ title=又拍云 onclick="_hmt.push(['_trackEvent', 'link', 'click', 'upyun'])" target=_blank>又拍云</a>
								<a href=http://www.lecloud.com/ title=乐视云 onclick="_hmt.push(['_trackEvent', 'link', 'click', 'lecloud'])" target=_blank>乐视云</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<div class=copyright>
			<div class=container>
				<div class=row>
					<div class=col-sm-12><span>Copyright &copy; <a href=http://www.golaravel.com/ >Laravel 中文网</a></span> | <span><a href=http://www.miibeian.gov.cn/ target=_blank>京ICP备11008151号</a></span> | <span>京公网安备11010802014853</span></div>
				</div>
			</div>
		</div>
		
		
		
	</body>
	<script src="js/main.js"></script>
	<script src="js/jQuery.js"></script>
	<script src="js/bootstrap.js"></script>

</html>