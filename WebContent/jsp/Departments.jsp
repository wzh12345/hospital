<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--科室信息页-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
	<!--列表的样式-->
	<link href="${pageContext.request.contextPath}/static/css/administrative-office.css" rel="stylesheet">
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
			  <li><a href="Departments.jsp" class="active">科室信息</a></li>
			  <li><a href="news.jsp">医疗动态</a></li>
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
        <h3 class="heading left-align">科室信息</h3>
        <div class="line"></div>
        <div class="headul left-align"></div>
			<div class="box1" id="m1">
				<div class="caption">非手术科室</div>
				<div class="pubc-box1">
					<ul class="clearfix">
						<li><a class="ellipsis" title="内科学系" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=1" target="_blank"><i></i>内科学系</a></li>
						<li><a class="ellipsis" title="心内科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=2" target="_blank"><i></i>心内科</a></li>
						<li><a class="ellipsis" title="呼吸内科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=3" target="_blank"><i></i>呼吸内科</a></li>
						<li><a class="ellipsis" title="消化内科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=4" target="_blank"><i></i>消化内科</a></li>
						<li><a class="ellipsis" title="肾内科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=5" target="_blank"><i></i>肾内科</a></li>
						<li><a class="ellipsis" title="血液内科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=6" target="_blank"><i></i>血液内科</a></li>
						<li><a class="ellipsis" title="风湿免疫科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=7" target="_blank"><i></i>风湿免疫科</a></li>
						<li><a class="ellipsis" title="感染内科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=8" target="_blank"><i></i>感染内科</a></li>
						<li><a class="ellipsis" title="普通内科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=9" target="_blank"><i></i>普通内科</a></li>
						<li><a class="ellipsis" title="肿瘤内科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=10" target="_blank"><i></i>肿瘤内科</a></li>
						<li><a class="ellipsis" title="MICU" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=11" target="_blank"><i></i>MICU</a></li>
						<li><a class="ellipsis" title="内分泌科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=12" target="_blank"><i></i>内分泌科</a></li>
						<li><a class="ellipsis" title="肠外肠内营养科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=13" target="_blank"><i></i>肠外肠内营养科</a></li>
						<li><a class="ellipsis" title="重症医学科（ICU）" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=14" target="_blank"><i></i>重症医学科（ICU）</a></li>
						<li><a class="ellipsis" title="儿科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=15" target="_blank"><i></i>儿科</a></li>
						<li><a class="ellipsis" title="神经科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=16" target="_blank"><i></i>神经科</a></li>
						<li><a class="ellipsis" title="心理医学科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=17" target="_blank"><i></i>心理医学科</a></li>
						<li><a class="ellipsis" title="皮肤科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=18" target="_blank"><i></i>皮肤科</a></li>
						<li><a class="ellipsis" title="变态反应科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=19" target="_blank"><i></i>变态反应科</a></li>
						<li><a class="ellipsis" title="急诊科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=20" target="_blank"><i></i>急诊科</a></li>
						<li><a class="ellipsis" title="中医科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=21" target="_blank"><i></i>中医科</a></li>
						<li><a class="ellipsis" title="老年医学科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=22" target="_blank"><i></i>老年医学科</a></li>
					</ul>
				</div>
			</div>
			<div class="box1" id="m2">
				<div class="caption">手术科室</div>
				<div class="pubc-box1">
					<ul class="clearfix">
						<li><a class="ellipsis" title="外科学系" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=24" target="_blank"><i></i>外科学系</a></li>
						<li><a class="ellipsis" title="基本外科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=25" target="_blank"><i></i>基本外科</a></li>
						<li><a class="ellipsis" title="骨科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=26" target="_blank"><i></i>骨科</a></li>
						<li><a class="ellipsis" title="心外科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=27" target="_blank"><i></i>心外科</a></li>
						<li><a class="ellipsis" title="胸外科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=28" target="_blank"><i></i>胸外科</a></li>
						<li><a class="ellipsis" title="泌尿外科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=29" target="_blank"><i></i>泌尿外科</a></li>
						<li><a class="ellipsis" title="神经外科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=30" target="_blank"><i></i>神经外科</a></li>
						<li><a class="ellipsis" title="血管外科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=31" target="_blank"><i></i>血管外科</a></li>
						<li><a class="ellipsis" title="整形美容外科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=32" target="_blank"><i></i>整形美容外科</a></li>
						<li><a class="ellipsis" title="乳腺外科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=33" target="_blank"><i></i>乳腺外科</a></li>
						<li><a class="ellipsis" title="肝脏外科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=34" target="_blank"><i></i>肝脏外科</a></li>
						<li><a class="ellipsis" title="麻醉科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=35" target="_blank"><i></i>麻醉科</a></li>
						<li><a class="ellipsis" title="妇产科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=36" target="_blank"><i></i>妇产科</a></li>
						<li><a class="ellipsis" title="眼科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=37" target="_blank"><i></i>眼科</a></li>
						<li><a class="ellipsis" title="耳鼻喉科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=38" target="_blank"><i></i>耳鼻喉科</a></li>
						<li><a class="ellipsis" title="口腔科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=39" target="_blank"><i></i>口腔科</a></li>
					</ul>
				</div>
			</div>
			<div class="box1" id="m3">
				<div class="caption">诊断相关科室</div>
				<div class="pubc-box1">
					<ul class="clearfix">
						<li><a class="ellipsis" title="超声医学科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=41" target="_blank"><i></i>超声医学科</a></li>
						<li><a class="ellipsis" title="病理科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=42" target="_blank"><i></i>病理科</a></li>
						<li><a class="ellipsis" title="检验科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=43" target="_blank"><i></i>检验科</a></li>
						<li><a class="ellipsis" title="放射科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=44" target="_blank"><i></i>放射科</a></li>
						<li><a class="ellipsis" title="放射治疗科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=45" target="_blank"><i></i>放射治疗科</a></li>
						<li><a class="ellipsis" title="物理医学康复科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=46" target="_blank"><i></i>物理医学康复科</a></li>
						<li><a class="ellipsis" title="核医学科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=47" target="_blank"><i></i>核医学科</a></li>
						<li><a class="ellipsis" title="营养科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=48" target="_blank"><i></i>营养科</a></li>
						<li><a class="ellipsis" title="输血科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=49" target="_blank"><i></i>输血科</a></li>
						<li><a class="ellipsis" title="药剂科" href="${pageContext.request.contextPath}/Departmentsintroduce.action?departmentId=50" target="_blank"><i></i>药剂科</a></li>
                 </ul>
				</div>
			</div>
    	</div>
  	</div>
  </div>
  <!-- 尾部 -->
  <%@ include file="../commer/footer.jsp" %>
  
  <script type="text/javascript" src="../static/js/jquery-3.3.1.js"></script>
        <script type="text/javascript">
			$(document).ready(function () {
				$(".clearfix li").hover(function () {
					i=$(".clearfix li").index(this);
					$(".clearfix li:eq("+i+")").css("border","1px solid #02b2b5");
					$(".clearfix li:eq("+i+") a").css("color","#02b2b5");
				},function () {
					$(".clearfix li:eq("+i+")").css("border","1px solid #cccccc");
					$(".clearfix li:eq("+i+") a").css("color","#333");
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