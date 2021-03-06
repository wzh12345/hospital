<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title></title>
	<!--重置样式-->
    <link href="../static/css/reset.css" rel="stylesheet">
    <!--幻灯片-->
	<link href="../static/css/hwslider.css" rel="stylesheet">
    <!--bootstrap css 文件-->
    <link rel="stylesheet" type="text/css" href="../static/css/bootstrap.css"/>
    <!--字体 -->
    <link href="../static/css/font-awesome.min.css" rel="stylesheet">
    <!--自定义 -->
    <link href="../static/css/style.css" rel="stylesheet">
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
			  <li><a href="index.jsp">首页 <span class="sr-only"></span></a></li>
			  <li><a href="Departments.jsp">科室信息</a></li>
			  <li><a href="news.jsp"  class="active">医疗动态</a></li>
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
	<div class="page-title">
		<div class="container">
		</div>
	</div>
	<!--团队-->
	<div class="team p50">
		<section class="team-section go_pt eo_pb">
			<div class="container">
				<div class="row team-style4">
					<div class="col-md-4 col-sm-6">
						<div class="team-post">
							<div class="thumb">
								<img src="../static/images/6.jpg" alt="">
							</div>
							<div class="content">
								<h4 class="title">医疗牙科部门最新趋势</h4>
								<h5 class="sub-title">李福尔</h5>
								<p>XX的通道有许多变化，但大部分人以某种形式遭受改变，注入幽默，或者看起来不太可信的随机词。</p>
								<a href="doctor.html" class="profile">阅读更多</a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="team-post">
							<div class="thumb">
								<img src="../static/images/7.jpg" alt="">
							</div>
							<div class="content">
								<h4 class="title">医疗牙科部门最新趋势</h4>
								<h5 class="sub-title">李福尔</h5>
								<p>XX的通道有许多变化，但大部分人以某种形式遭受改变，注入幽默，或者看起来不太可信的随机词。</p>
								<a href="doctor.html" class="profile">阅读更多</a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="team-post">
							<div class="thumb">
								<img src="../static/images/6.jpg" alt="">
							</div>
							<div class="content">
								<h4 class="title">医疗牙科部门最新趋势</h4>
								<h5 class="sub-title">李福尔</h5>
								<p>XX的通道有许多变化，但大部分人以某种形式遭受改变，注入幽默，或者看起来不太可信的随机词。</p>
								<a href="doctor.html" class="profile">阅读更多</a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="team-post">
							<div class="thumb">
								<img src="../static/images/9.jpg" alt="">
							</div>
							<div class="content">
								<h4 class="title">医疗牙科部门最新趋势</h4>
								<h5 class="sub-title">李福尔</h5>
								<p>XX的通道有许多变化，但大部分人以某种形式遭受改变，注入幽默，或者看起来不太可信的随机词。</p>
								<a href="doctor.html" class="profile">阅读更多</a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="team-post">
							<div class="thumb">
								<img src="../static/images/15.jpg" alt="">
							</div>
							<div class="content">
								<h4 class="title">医疗牙科部门最新趋势</h4>
								<h5 class="sub-title">李福尔</h5>
								<p>XX的通道有许多变化，但大部分人以某种形式遭受改变，注入幽默，或者看起来不太可信的随机词。</p>
								<a href="doctor.html" class="profile">阅读更多</a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6">
						<div class="team-post">
							<div class="thumb">
								<img src="../static/images/14.jpg" alt="">
							</div>
							<div class="content">
								<h4 class="title">医疗牙科部门最新趋势</h4>
								<h5 class="sub-title">李福尔</h5>
								<p>XX的通道有许多变化，但大部分人以某种形式遭受改变，注入幽默，或者看起来不太可信的随机词。</p>
								<a href="doctor.html" class="profile">阅读更多</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!--尾部-->
	<footer>
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-12">
						<div class="single-footer-widget">
            	<div class="section-heading">
            	<h4>关于我们</h4>
            	<div class="line"></div>
          		</div>           
          		<p>一个长期以来的事实是，读者会在看到其布局时被页面的可读内容分散注意力。使用XXX的观点是，它具有或多或少的正常字母分配，而不是使用“内容在这里，这里的内容”，使它看起来像可读的英语。</p>
          	</div>
					</div>
					<div class="col-md-3 col-sm-12 f1">
						<div class="single-footer-widget">
	            <div class="section-heading">
	            <h4>我们的服务</h4>
	            <div class="line"></div>
              </div>
              <ul class="footer-service">
                <li><a href="#"><span class="fa fa-check"></span>服务名称</a></li>
                <li><a href="#"><span class="fa fa-check"></span>服务名称</a></li>
                <li><a href="#"><span class="fa fa-check"></span>服务名称</a></li>
                <li><a href="#"><span class="fa fa-check"></span>服务名称</a></li>
              </ul>
            </div>
					</div>
					<div class="col-md-3 col-sm-12 f2">
						<div class="single-footer-widget">
	            <div class="section-heading">
	            <h4>关注我们</h4>
	            <div class="line"></div>
            	</div>
              <img src="../static/images/status.gif"/>
            </div>
					</div>
					<div class="col-md-3 col-sm-12">
						<div class="single-footer-widget">
                <div class="section-heading">
                <h4>联系我们</h4>
                <div class="line"></div>
              </div>
              <address class="contact-info">
                <p><span class="fa fa-home"></span>江苏省昆山市庆丰西路639号智谷创意工业园301</p>
                <p><span class="fa fa-phone"></span>0512-57995109</p>
                <p><span class="fa fa-envelope"></span>Cindy@kindjob.cn</p>
              </address>
              </div>
					</div>
				</div>
			</div>
		</div>
	</footer>
		<!--jq和bootstrapjs 文件 -->
		<script src="../static/js/jquery.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="../static/js/bootstrap.js" ></script>
		<!--幻灯片JS 文件 -->
		<script type="text/javascript" src="../static/js/jquery.hwslider.min.js" ></script>
		<script>
			$(function(){
				$("#hwslider").hwSlider({
					height:290,
					autoPlay:true,
					arrShow:true,
					dotShow:true,
					touch:false
				});
			});
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