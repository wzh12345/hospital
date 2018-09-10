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
    <link href="${pageContext.request.contextPath}/static/css/reset.css" rel="stylesheet">
    <!--幻灯片-->
	<link href="${pageContext.request.contextPath}/static/css/hwslider.css" rel="stylesheet">
    <!--bootstrap css 文件-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css"/>
    <!--字体 -->
    <link href="${pageContext.request.contextPath}/static/css/font-awesome.min.css" rel="stylesheet">
    <!--自定义 -->
    <link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/static/css/doctor.css" rel="stylesheet">
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
			    <li><a href="#" class="active">${name}</a></li>
				<!-- <li><a href="jsp/doctorinfo.jsp">首页 <span class="sr-only"></span></a></li>	 -->			
				<li><a href="${pageContext.request.contextPath}/exit.action">退出</a></li>
			</ul>
	    </div>
	  </div>
	</nav>
	<!--幻灯片-->
	<div class="page-title">
		<div class="container">
		</div>
	</div>

	<div class="container p50 about">
		<div class="row">
			<div class="col-sm-12 col-xs-12 text-area ">
				<h3 class="heading left-align">病人信息</h3>
				<div class="line"></div>
				<div class="headul left-align"></div>
				<div class="body_box dorctordtail" style="min-height: 106px">
					<div class="part2">
						<div class="block">
							<div class="table">
								<table>
									<tbody>
									<tr class="trth">
										<th class="th1" style="background:#5f9ea0">病人姓名</th>
										<th class="th2" style="background:#5f9ea0">病人性别</th>
										<th class="th2" style="background:#5f9ea0">病人年龄</th>
										<th class="th2" style="background:#5f9ea0">病人预约的时间</th>
										<th class="th2" style="background:#5f9ea0">预约的状态</th>
									</tr>
									<c:forEach items="${order}" var="list">
									<tr class="tr1">								    
										<td class="td1">
											<a href=""><div class="td">${list.name}</div></a>
										</td>									
										<td class="td1">
											<a href=""><div class="td">${list.sex}</div></a>
										</td>
										<td class="td1">
											<a href=""><div class="td">${list.age}</div></a>
										</td>
										<td class="td1">
											<a href=""><div class="td">${list.orderTime}</div></a>
										</td>
										<td class="td1">
										<a href="${pageContext.request.contextPath}/change.action?pid=${list.pid}">
										    <c:if test="${list.status eq 1}">
										      <div class="td">已预约</div>
										    </c:if>
											<c:if test="${list.status eq 2}">
											   <div class="td">已完成</div>
											</c:if>
										</a>
										</td>
									</tr>
									</c:forEach>
									</tbody>
								</table>
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
				$(".item").hover(function () {
					$(".item .h2").css("color","#02b2b5");
				},function () {
					$(".item .h2").css("color","#333");
				})
			})
		</script>
</body>
</html>