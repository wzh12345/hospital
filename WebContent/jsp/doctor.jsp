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
	<link href="static/css/doctor.css" rel="stylesheet">
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
	<div class="page-title">
		<div class="container">
		</div>
	</div>
	<!--医生简介-->
	<div class="container p50 about">
		<div class="row">
			<div class="col-sm-12 col-xs-12 text-area ">
				<h3 class="heading left-align">医生介绍</h3>
				<div class="line"></div>
				<div class="headul left-align"></div>
				<div class="body_box dorctordtail" style="min-height: 106px">
					<div class="position">
						<div class="block">您现在的位置：
							<a href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=${department.departmentId}">${department.departmentName}</a>
							&gt;<a href="#">专家团队</a>	</div></div>
					<div class="part1">
						<div class="block clearfix">
							<div class="img">
								<img src="${doctor.photodoctor}" />
							</div>
							<div class="text-box">
								<div class="dorname">
									<div class="title1">${doctor.name}</div>
									<div class="title2">${doctor.titel}</div>
									<div class="title2">擅长 : ${doctor.good}</div>
								</div>
								<div class="text">
									<p>${doctor.introduce}</p>
								</div>
								<div class="item">
									<a target="_blank" href="showOrder.action">
										<div class="img" style="width: 60px;height: 62px;overflow: hidden;"><img src="static/images/subscribe.png"> </div>
										<div class="h2">预约挂号</div>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="part2">
						<div class="block">
							<div class="title1">
								<span>出诊信息</span>
							</div>
							<div class="table">
								<table>
									<tbody>
									<tr class="trth">
										<th class="th1">医生</th>
										<th class="th2">科室</th>
										<th class="th4">日期</th>
										<th class="th5">地点</th>
									</tr>
									<c:forEach items="${listVistorTime}" var="list">
									<tr class="tr1">
										<td class="td1">
											<div class="td">${doctor.name}</div>
										</td>
										<td class="td1">
											<div class="td">${department.departmentName}</div>
										</td>
										<td class="tab-box table1 td1">
											<div class="table2-box">
												<table class="table2">
													<tbody>
													<tr>
														<th class="tb2-th1" rowspan="3">${list.dateTime}</th>
														<th class="tb2-th2"></th>
														<th class="tb2-th3">上</th>
														<th class="tb2-th4">下</th>
														<th class="tb2-th5">夜</th>
													</tr>
													<tr>
														<td>预约诊疗数</td>
														<td>${list.mvistor}</td>
														<td>${list.avistor}</td>
														<td>${list.gvistor}</td>
													</tr>
													<tr>
														<td>医事服务费</td>
														<td>${list.mmoney}</td>
														<td>${list.amoney}</td>
														<td>${list.gmoney}</td>
													</tr>
													</tbody>
												</table>
											</div>
										</td>
										<td class="td1">
											<div class="td">${list.address}</div>
										</td>
									</tr>
									</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div id="docker-visit"></div>
					<div class="part3">
						<div class="block">
							<div class="title1">详细介绍</div>
							<div class="desc">
								<p>${doctor.details}</p>
							</div>
						</div>
					</div>
			</div>
		</div>
	</div>
	</div>
	<!--尾部-->
    <%@ include file="../commer/footer.jsp" %>
		<!--jq和bootstrapjs 文件 -->
		<script src="static/js/jquery.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="static/js/bootstrap.js" ></script>
		<!--幻灯片JS 文件 -->
		<script type="text/javascript" src="static/js/jquery.hwslider.min.js" ></script>
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