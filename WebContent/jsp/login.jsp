<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>注册登录页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/login.js"></script>
<link href="${pageContext.request.contextPath}/static/css/login2.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="login" style="margin-top: 150px;">
		<div class="header">
			<div class="switch" id="switch">
				<a class="switch_btn_focus" id="switch_qlogin"
					href="javascript:void(0);" tabindex="7">快速登录</a> <a
					class="switch_btn" id="switch_login" href="javascript:void(0);"
					tabindex="8">快速注册</a>
				<div class="switch_bottom" id="switch_bottom"
					style="position: absolute; width: 64px; left: 0px;"></div>
			</div>
		</div>

		<div class="web_qr_login" id="web_qr_login"
			style="display: block; height: 235px;">
			<!--登录-->
			<div class="web_login" id="web_login">
				<div class="login-box">
					<div class="login_form">
						<form action="${pageContext.request.contextPath}/login.action" name="loginform" accept-charset="utf-8" id="login_form" class="loginForm" method="post">
							<input type="hidden" name="did" value="0" /> <input type="hidden"
								name="to" value="log" />
							<div class="uinArea" id="uinArea">
								<label class="input-tips" for="u">帐号：</label>
								<div class="inputOuter" id="uArea">
									<input type="text" id="u" name="username" class="inputstyle" placeholder="请输入身份证号"/>
								</div>
							</div>
							<div class="pwdArea" id="pwdArea">
								<label class="input-tips" for="p">密码：</label>
								<div class="inputOuter" id="pArea">
									<input type="password" id="p" name="password" class="inputstyle" />
								</div>
							</div>

							<div style="padding-left: 50px; margin-top: 20px;">
								<input type="submit" value="登 录" style="width: 150px;" class="button_blue" />
							</div>
						</form>
					</div>

				</div>

			</div>
			<!--登录end-->
		</div>

		<!--注册-->
		<div class="qlogin" id="qlogin" style="display: none;">
			<div class="web_login">
				<form name="form2" id="regUser" accept-charset="utf-8" action="${pageContext.request.contextPath}/Register.action" method="post">
					<input type="hidden" name="to" value="reg" /> <input type="hidden" name="did" value="0" />
					<ul class="reg_form" id="reg-ul">
						<li>
						<label for="user" class="input-tips2">用户名：</label>
							<div class="inputOuter2">
								<input type="text" id="user" name="uname"  class="inputstyle2" placeholder="请输入真实的姓名"/>
							</div>
						</li>

						<li>
						    <label for="passwd" class="input-tips2">密码：</label>
							<div class="inputOuter2">
								<input type="password" id="passwd" name="upassword"  class="inputstyle2" />
							</div>
						</li>
						
						<li>
						    <label for="phone" class="input-tips2">身份证号：</label>
							<div class="inputOuter2">
								<input type="text"  name="cardId"  class="inputstyle2" pattern="^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$"/>
							</div>
						</li>

						
						<li>
							<div class="inputArea">
								<input type="submit" style="margin-top: 10px; margin-left: 85px;width: 150px;" class="button_blue" value="注册" /> 
							</div>
						</li>
					</ul>
				</form>
			</div>
		</div>
		<!--注册end-->
	</div>
</body>
</html>