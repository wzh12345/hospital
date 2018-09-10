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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.css"/>
    <!--字体 -->
    <link href="${pageContext.request.contextPath}/static/css/font-awesome.min.css" rel="stylesheet">
    <!--自定义 -->
    <link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet">
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
	        <li><a href="index.jsp" class="active">首页 <span class="sr-only"></span></a></li>
	        <li><a href="Departments.jsp">科室信息</a></li>
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
	<div id="hwslider" class="hwslider">
		<ul>
			<li><a><img src="../static/images/banner-1.jpg" /></a></li>
			<li><a><img src="../static/images/banner-2.jpg" /></a></li>
			<li><a><img src="../static/images/banner-3.jpg" /></a></li>
			<li><a><img src="../static/images/banner-4.jpg" /></a></li>
		</ul>	
	</div>
	<!--服务-->
	<div class="service">
		<div class="container p50">
			<div class="row">
			  <div class="col-md-12 title">
			  	<h2>我们的服务</h2>
          <div class="line"></div>
			  </div>
			  <div class="col-md-4 col-sm-6 col-xs-12">
			  	<div class="ser-item">
				  	<div class="service-icon">
					    <span class="fa fa-heartbeat service-icon-effect"></span>  
					  </div>                      
					  <h3><a href="#">心脏监测</a></h3>
					  <p>进行心脏检测可以随时监控病人的身体健康情况，避免发生意外</p>
			  	</div>
			  </div>
			  <div class="col-md-4 col-sm-6 col-xs-12">
			  	<div class="ser-item">
				  	<div class="service-icon">
					    <span class="fa fa-stethoscope service-icon-effect"></span>  
					  </div>                      
					  <h3><a href="#">康复治疗</a></h3>
					  <p>主要有康复功能评估、确定康复目标、制定康复计划，实施治疗计划，康复评估贯穿治疗</p>
			  	</div>
			  </div>
			  <div class="col-md-4 col-sm-6 col-xs-12">
			  	<div class="ser-item">
				  	<div class="service-icon">
					    <span class="fa fa-h-square service-icon-effect"></span>  
					  </div>                      
					  <h3><a href="#">医疗保健</a></h3>
					  <p>将由药师直接、负责地提供的与药物治疗相关的服务，达到改善病人生命质量的确切效果。</p>
			  	</div>
			  </div>
			  <div class="col-md-4 col-sm-6 col-xs-12">
			  	<div class="ser-item">
				  	<div class="service-icon">
					    <span class="fa fa-medkit service-icon-effect"></span>  
					  </div>                      
					  <h3><a href="#">背景调查</a></h3>
					  <p>每个医生或护士我们都有详细的背景资料，让病人和家属放心</p>
			  	</div>
			  </div>
			  <div class="col-md-4 col-sm-6 col-xs-12">
			  	<div class="ser-item">
				  	<div class="service-icon">
					    <span class="fa fa-user-md service-icon-effect"></span>  
					  </div>                      
					  <h3><a href="#">特殊医生</a></h3>
					  <p>我们有对于肺癌，乳腺癌等癌症方面的研究专家团队</p>
			  	</div>
			  </div>
			  <div class="col-md-4 col-sm-6 col-xs-12">
			  	<div class="ser-item">
				  	<div class="service-icon">
					    <span class="fa fa-ambulance service-icon-effect"></span>  
					  </div>                      
					  <h3><a href="#">24小时服务</a></h3>
					  <p>医生护士会有24小时轮班制，提供24小时服务避免发生意外，让病患和家属能安心在我们医院治疗</p>
			  	</div>
			  </div>
			</div>
		</div>
	</div>
	<!--选择我们 -->
	<div class="choose p50">
		<div class="container">
			<div class="row">
			  <div class="col-md-12 title">
			  	<h2>为什么选择我们</h2>
          <div class="line"></div>
			  </div>
			  <div class="col-md-5 col-sm-12 col-xs-12 p30">
			  	<img src="../static/images/choose-us-img1.jpg" />
			  </div>
			  <div class="col-md-7 col-sm-12 col-xs-12 p30 c-show">
			  	<div class="row">
            <div class="col-md-2 col-sm-2">
              <a href="#" class="media-icon">
                <span class="fa fa-hospital-o"></span>
              </a>
            </div>
            <div class="col-md-10 col-sm-10 clearfix c-w">
              <h3 class="">先进的医疗设备</h3>
              <p>引入了以“飞利浦1.5T磁共振”和“128排螺旋CT”代表的一系列具有国际尖端技术水平的医疗设备，充分注重硬件设
				  备的提升和更新换代，不断提高医院硬件设施和相关配套设施的扩充和完善，不断提高医院自身的诊疗水平，以先进
				  的医疗设备为依托，以专业的医疗医术为保障，以贴心的医疗服务为基础，为百姓的健康和卫生事业的发展做出重大
				  的贡献！</p>
            </div>
          </div>
          <div class="row">
            <div class="col-md-2 col-sm-2 ">
              <a href="#" class="media-icon">
                <span class="fa fa-user-md"></span>
              </a>
            </div>
            <div class="col-md-10 col-sm-10 clearfix c-w">
              <h3 class="">专业的医疗团队</h3>
              <p>目前中心医务人员67人，其中高级职称2人，中级职称6人；硕士6人；健康管理师12人，心理咨询师7人，公共营养师6
				  人。依托医院专家团队支持背景，人员结构合理，技术力量雄厚。</p>
            </div>
          </div>
         <div class="row">
            <div class="col-md-2 col-sm-2">
              <a href="#" class="media-icon">
                <span class="fa fa-ambulance"></span>
              </a>
            </div>
            <div class="col-md-10 col-sm-10 clearfix c-w">
              <h3 class="">紧急支援</h3>
              <p>为了更加快捷、高效地向社会提供优质的医疗救援服务和高端绿色通道的服务，卫生部国际紧急救援中心建立了人员、
				  设备、系统一体化相融合的呼叫中心平台。该呼叫平台采用美国3com公司24个坐席的硬件设备，拥有医疗专业背景和
				  国外工作经历的呼叫员全天候24小时提供中英文双语服务。呼叫中心软件系统功能强大，具备接警时客户信息自动弹
				  出、多方通话、GPS定位、数据存储、医疗档案管理等多项功能。</p>
            </div>
          </div>
			  </div>
			</div>
		</div>	
	</div>
	<!--数据-->
	<div class="counters p50 clearfix">
		<div class="container">
			<div class="row">
		  	<div class="col-md-3 col-sm-6 col-xs-6">
		  		<div class="counter-box">
              <div class="counter-no counter">
                200
              </div>
              <div class="counter-label">医疗人员</div>
          </div>	
		  	</div>
		  	<div class="col-md-3 col-sm-6 col-xs-6">
		  		<div class="counter-box">
              <div class="counter-no counter">
                300
              </div>
              <div class="counter-label">诊所病房</div>
          </div>	
		  	</div>
		  	<div class="col-md-3 col-sm-6 col-xs-6">
		  		<div class="counter-box">
              <div class="counter-no counter">
                350
              </div>
              <div class="counter-label">医疗设备</div>
          </div>	
		  	</div>
		  	<div class="col-md-3 col-sm-6 col-xs-6">
		  		<div class="counter-box">
              <div class="counter-no counter">
                700
              </div>
              <div class="counter-label">康复病人</div>
          </div>	
		  	</div>
			  
			</div>
		</div>		
	</div>

	<!--尾部-->
	<footer>
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-12 ">
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
                <li><a href="#"><span class="fa fa-check"></span>康复治疗</a></li>
                <li><a href="#"><span class="fa fa-check"></span>医疗保健</a></li>
                <li><a href="#"><span class="fa fa-check"></span>特殊专家</a></li>
                <li><a href="#"><span class="fa fa-check"></span>24小时服务</a></li>
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
                <p><span class="fa fa-home"></span>湖南省长沙市岳麓区金融科技园</p>
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
					height:220,
					autoPlay:true,
					arrShow:true,
					dotShow:true,
					touch:false
				});
			});	
			
		</script>
</body>
</html>