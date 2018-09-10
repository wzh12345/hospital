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
	<link href="${pageContext.request.contextPath}/static/css/reset.css" rel="stylesheet">
	<!--幻灯片-->
	<link href="${pageContext.request.contextPath}/static/css/hwslider.css" rel="stylesheet">
	<!--bootstrap css 文件-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css" />
	<!--字体 -->
	<link href="${pageContext.request.contextPath}/static/css/font-awesome.min.css" rel="stylesheet">
	<!--自定义 -->
	<link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet">
	<style>
		select{
					width : 350px;
					height : 45px;
					padding : 0.2em 0.4em 0.2em 0.4em;
					vertical-align : middle;
					border : 1px solid #94c1e7;
					-moz-border-radius : 0.2em;
					-webkit-border-radius : 0.2em;
					border-radius : 0.2em;
					-webkit-appearance : none;
					-moz-appearance : none;
					appearance : none;
					background : #ffffff;
					font-family : SimHei;
					font-size : 1.1em;
					color : RGBA(102,102,102,0.7);
					cursor : pointer;
}

	</style>
</head>

<body>
<%
    if(request.getSession().getAttribute("name")==null){
        response.sendRedirect("jsp/login.jsp");
    }
%>
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
			<li><a href="jsp/Departments.jsp">科室信息</a></li>
			<li><a href="jsp/news.jsp">医疗动态</a></li>
			<li><a href="../showOrder.action" class="active">预约挂号</a></li>
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
	<div class="page1-title">
		<div class="container">
		</div>
	</div>
	<!--联系我们-->
	<div class="main" role="main">
		<div class="container p50">
			<div class="contact row">
				<div class="map col-md-6 col-sm-12">
					<img src="static/images/choose-us-img1.jpg" alt="">
				</div>
				<form method="post" action="${pageContext.request.contextPath}/order.action" class="left_form col-md-6">
				    <div>
						<span><label>姓名</label></span>
						<span><input name="name" type="text" class="textbox" style="width:400px"></span>
					</div>
					
					<div>
						<span><label>性别</label></span>
						<span>
							<label>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;男&nbsp;&nbsp;&nbsp;&nbsp;<input name="sex" value="男" type="radio"
								  class="textbox" checked="checked" style="margin-right: 150px">
								女&nbsp;&nbsp;&nbsp;&nbsp;<input name="sex" value="女" type="radio" class="textbox">
							</label>
						</span>
					</div>
					
					<div>
						<span><label>年龄</label></span>
						<span><input name="age" type="text" class="textbox" style="width:400px"></span>
					</div>
					
					<div>
						<span><label>科室</label></span>
						    <span>
							<select name="department" id="depart" style="border:none">
								<option value="内科学系">内科学系</option>
								<option value="心内科">心内科</option>
								<option value="呼吸内科">呼吸内科</option>
								<option value="消化内科">消化内科</option>
								<option value="肾内科">肾内科</option>
								<option value="血液内科">血液内科</option>
								<option value="风湿免疫科">风湿免疫科</option>
								<option value="感染内科">感染内科</option>
								<option value="普通内科">普通内科</option>
								<option value="肿瘤内科">肿瘤内科</option>
								<option value="MICU">MICU</option>
								<option value="内分泌科">内分泌科</option>
								<option value="肠外肠内营养科">肠外肠内营养科</option>
								<option value="重症医学科（ICU）">重症医学科（ICU）</option>
								<option value="儿科">儿科</option>
								<option value="神经科">神经科</option>
								<option value="心理医学科">心理医学科</option>
								<option value="皮肤科">皮肤科</option>
								<option value="变态反应科">变态反应科</option>
								<option value="急诊科">急诊科</option>
								<option value="中医科">中医科</option>
								<option value="老年医学科">老年医学科</option>
								<option value="外科学系">外科学系</option>
								<option value="基本外科">基本外科</option>
								<option value="骨科">骨科</option>
								<option value="心外科">心外科</option>
								<option value="胸外科泌尿外科">胸外科泌尿外科</option>
								<option value="神经外科">神经外科</option>
								<option value="血管外科">血管外科</option>
								<option value="整形美容外科">整形美容外科</option>
								<option value="乳腺外科">乳腺外科</option>
								<option value="肝脏外科">肝脏外科</option>
								<option value="麻醉科">麻醉科</option>
								<option value="妇产科">妇产科</option>
								<option value="眼科">眼科</option>
								<option value="耳鼻喉科">耳鼻喉科</option>
								<option value="口腔科">口腔科</option>
								<option value="超声医学科">超声医学科</option>
								<option value="病理科">病理科</option>
								<option value="检验科">检验科</option>
								<option value="放射科">放射科</option>
								<option value="放射治疗科">放射治疗科</option>
								<option value="物理医学康复科">物理医学康复科</option>
								<option value="核医学科">核医学科</option>
								<option value="营养科输血科">营养科输血科</option>
								<option value="药剂科">药剂科</option>
							</select>
					     </span>
					</div>
					<div>
						<span><label>医生姓名</label></span>
						<span>
						   <select name="doctorName" id="doctor" style="border:none">
						   
						   </select>
						</span>
					</div>
					<div>
						<span><label>联系电话</label></span>
						<span><input name="phone" type="text" class="textbox" style="width:400px"></span>
					</div>
					<div>
						<span><label>预约日期</label></span>
						<span>
							<select name="orderTime" id="Time" style="border:none">
						   
						   </select>
						</span>
					</div>
					<div>
						<span><input type="submit" value="预约" class="myButton"></span>
					</div>
			</form>
		</div>
	</div>
	</div>
	<!--尾部-->
     <%@ include file="../commer/footer.jsp" %>
	<!--jq和bootstrapjs 文件 -->
	<!-- <script src="../static/js/jquery.min.js" type="text/javascript"></script> -->
	<!-- <script type="text/javascript" src="../static/js/bootstrap.js"></script> -->
	<!--幻灯片JS 文件 -->
	<!-- <script type="text/javascript" src="../static/js/jquery.hwslider.min.js"></script> -->
	<!-- <script>
		$(function () {
			$("#hwslider").hwSlider({
				height: 290,
				autoPlay: true,
				arrShow: true,
				dotShow: true,
				touch: false
			});
		});
	</script> -->
	<script type="text/javascript" src="static/js/jquery-3.3.1.js"></script>
        <script type="text/javascript">
			$(document).ready(function () {
				$("#info").hover(function () {
					$("#info1").show();
				},function () {
					$("#info1").hide();
				})
			})
		 	$("#depart").click(function(){
		 		/* alert("hsah");  */
				var text=$("#depart").val();
				$.post("findDoctor.action",{text:text},function(data){
					var textHTML=" ";
					for(var i=0;i<data.length;i++){
						textHTML+="<option value="+ data[i].name +">"+ data[i].name+"</option>"
					}
					$("#doctor").html(textHTML);
				},"json")
			}) 
			
			$("#doctor").click(function(){
				var text=$("#doctor").val();
				$.post("findTime.action",{text:text},function(data){
					var textHTML=" ";
					for(var i=0;i<data.length;i++){
						textHTML+="<option value="+ data[i].dateTime +">"+ data[i].dateTime+"</option>"
					}
					$("#Time").html(textHTML);
				},"json")
			}) 
		</script>

</body>

</html>