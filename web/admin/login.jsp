<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="jspSamples.unit7.websiteSample.*"%>
<%
	request.setCharacterEncoding("GBK"); //注释:设置编码方式为GBK
	String Action = request.getParameter("Action"); //注释:判断是否点击“登录”
	if (Action != null && Action.equals("Login")) {
		String User = request.getParameter("User"); //注释:得到登录用户名
		String Pwd = request.getParameter("Pwd"); //注释:得到登录密码
		out.println("<script>alert('" + User + "');</script>");
		out.println("<script>alert('" + Pwd + "');</script>");
		Login login = new Login(); //注释：新建登录类Login
		boolean isOK = login.LoginCheck(User, Pwd); //注释：调用方法LoginCheck，判断返回值是真还是假
		if (isOK) {
			//如果isOK=true，说明验证成功，可以进入后台页面news.jsp 
			out.println("<SCRIPT LANGUAGE='JavaScript'>alert('登录成功！');location.href='news.jsp';</SCRIPT>");
		} else {
			//如果isOK=false，说明验证失败，无法进入后台页面
			out.println("<SCRIPT LANGUAGE='JavaScript'>alert('登录失败！');location.href='login.jsp';</SCRIPT>");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GBK">
<title>后台登录-天码行空学习建站</title>
<link rel="stylesheet" href="css/amazeui.min.css" />
<script src="js/main.js"></script>
</head>
<!--注释：引入背景图-->
<body style="background: url(img/login-bg.png) no-repeat">
	<!--注释：公司标题图片-->
	<div class="header" style="text-align: center; margin-top: 100px">
		<div class="am-g">
			<img src="img/loginTitle.png" />
		</div>
	</div>
	<!--注释：登录框-->
	<div class="am-g" style="margin-top: 20px">
		<div class="am-u-lg-6  am-u-md-10  am-u-sm-centered"
			style="background: url(img/loginForm.png) no-repeat; height: 479px; width: 695px">
			<!--注释：登录表单-->
			<form action="login.jsp" method="post" class="am-form login-form"
				style="padding: 50px 0px 0px 120px; width: 550px"
				onSubmit="return LoginCheck()">
				<label for="name"> 用户名: </label> <input type="text" name="User"
					id="User" value=""> <br> <label for="ps"> 密码:</label>
				<input type="password" name="Pwd" id="Pwd" value=""> <br>
				<!--注释：登录按钮-->
				<div class="am-cf">
					<input name="Action" type="hidden" value="Login"> <input
						type="submit" value="登 录" id="save"
						style="width: 100%; border-radius: 0.5em;"
						class="am-btn am-btn-primary am-btn-sm am-round">
				</div>
			</form>
		</div>
	</div>
</body>
</html>