<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>所有商品</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/Computers.css" />
</head>
<body>

	<div class="container">
		<div class="col-md-3" style="height: 200px; border: 1px solid;">
			<div class="" style="font-size: 20px;">
			<p style="color: white;font-size: 30px">功能框</p>
			<ul>
				<li><a href="main.jsp">网站首页</a></li>
				<li><a href="Computer?currPage=1">首页</a></li>
				<li><a href="Computer?currPage=${currPage - 1 }">上一页</a></li>
				<li><a href="Computer?currPage=${currPage + 1 }">下一页</a></li>
				<li><a href="Computer?currPage=${maxPages }">尾页</a></li>
			</ul>
			</div>
		</div>
		<div class="col-md-9" style="border: 1px solid; ">

			<p style="color: white;font-size: 30px">物品展示栏</p>
			<table class="table table-border" style="font-size: 20px;">
				<tr style = "color: white;">
					<td>id</td>
					<td>名称</td>
					<td>价格</td>
					<td>图片</td>
					<td>数量</td>
				</tr>
				<c:forEach var="tmp" items="${Computer}">
					<tr style = "color: white">
						<td>${tmp.id}</td>
						<td>${tmp.name}</td>
						<td>${tmp.price}</td>
						<td><img style="height:150px;width:150px" src="${tmp.picture}" /></td>
						<td>${tmp.number}</td>
					</tr>
				</c:forEach>
			</table>

		</div>
	</div>

</body>
<script type="text/javascript" src="js/jQuery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</html>

















