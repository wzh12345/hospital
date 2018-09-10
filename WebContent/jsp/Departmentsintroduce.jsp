<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title></title>
	<!--重置样式-->
	<link href="static/css/reset.css" rel="stylesheet">
	<!--幻灯片-->
	<link href="static/css/hwslider.css" rel="stylesheet">
	<!--bootstrap css 文件-->
	<link rel="stylesheet" type="text/css" href="static/css/bootstrap.css"/>
	<!--字体 -->
	<link href="static/css/font-awesome.min.css" rel="stylesheet">
	<!--自定义 -->
	<link href="static/css/style.css" rel="stylesheet">
	<!--列表的样式-->
	<link href="static/css/Depatrmentsinto.css" rel="stylesheet">
</head>
<body>
<!--头部-->
<nav class="navbar navbar-default">
	<div class="container">
		<!-- 移动端导航图标 -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Hospital</a>
		</div>
		<!-- 导航-->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="jsp/index.jsp">首页 <span class="sr-only"></span></a></li>
				<li><a href="jsp/Departments.jsp" class="active">科室信息</a></li>
				<li><a href="jsp/news.jsp">医疗动态</a></li>
				<li><a href="../showOrder.action">预约挂号</a></li>
				<c:if test="${not empty name}">
	            <li id="info">
	              <a href="#">${name}</a>
	                <div id="info1" style="display:none;">
	                <ul style="text-align:center">
	                <li><a href="${pageContext.request.contextPath}/selectorder.action">预约信息</a></li>
	                <li><a href="${pageContext.request.contextPath}/exit.action">注销</a></li>
	                </ul>
	             </div>
	            </li>
	          </c:if>
	            <c:if test="${empty name}">
	              <li><a href="login.jsp">登录</a></li>
	            </c:if>  
			</ul>
		</div>
	</div>
</nav>
<!--幻灯片-->
<div class="page3-title">
	<div class="container">
	</div>
</div>
<!--科室信息-->
<div class="container p50 about">
	<div class="row">
		<div class="col-sm-12 col-xs-12 text-area ">
			<h3 class="heading left-align">科室介绍</h3>
			<div class="line"></div>
			<div class="headul left-align"></div>
			<div class="examination bone">
				<div class="block clearfix">
					<div class="video"><img src="${department.photoDepartment}" width="493" title="" alt="" height="365"></div>
					<div class="boxleft">
					<div class="inner">
						<div id="part1_title" class="part1">
							<div class="pubc-title1 clearfix">
							<span class="span1">${department.departmentName}</span>
							<div class="ksjj">
								<p> ${department.departmentRecommend}</p>
							</div>
							</div>
						</div>
							<div class="item">
								<a target="_blank" href="showOrder.action">
									<div class="img"><img src="static/images/subscribe.png"> </div>
									<div class="h2">预约挂号</div>
								</a>
							</div>
					</div>
					</div>
					</div>
				</div>
			</div>
		</div>
	<div class="r-bottom p50">
		<div class="container-fluid">
			<h3>专家团队</h3>
			<p>我们有最专业的专家团队为您保驾护航</p>
		</div>
		<div class="container p50">
			<div class="row">
			    <c:forEach items="${listDoctor}" var="list">
				<div class="col-md-3 col-sm-6 col-xs-6 my-team-member wow fadeInUp">
					<a href="${pageContext.request.contextPath}/Doctor.action?id=${list.id}">
					<div class="my-member-img">
						 <img src="${list.photodoctor}" style="width:237px;height:347px;display:block;" alt="team01" > 
					</div>
					<div class="my-team-detail text-center">
						<h4 class="my-member-name">${list.name}</h4>
						<p class="my-member-post">${list.titel}</p>
					</div>
					</a>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
	</div>
<%@ include file="../commer/footer.jsp" %>
<script type="text/javascript" src="static/js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function () {
		$(".item").hover(function () {
			$(".item .h2").css("color","#02b2b5");
		},function () {
			$(".item .h2").css("color","#333");
		})
	})
</script>
<script type="text/javascript" src="../static/js/jquery-3.3.1.js"></script>
        <script type="text/javascript">
			$(document).ready(function () {
				$("#info").hover(function () {
					$("#info1").show();
				},function () {
					$("#info1").hide();
				})
			})
		</script>
</body>
</html>