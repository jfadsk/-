<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="jspSamples.unit7.websiteSample.*"%>
<!DOCTYPE html>
<html>
<!--注释：头部-->
<head>
<meta charset="GBK">
<!--注释：网站标题-->
<title>公告--天码行空学习建站</title>
<!--注释：引入网站的样式-->
<link type="text/css" href="css/style.css" rel="stylesheet">
<!--注释：引入网站的特效-->
<script type=" text/javascript" src="js/fwslider.js"></script>
</head>
<!--注释：头部结束-->

<!--注释：身体-->
<body>
	<div class="bgStyle">
		<div class="header">
			<div class="logo">
				<img src="img/logo.png">
			</div>
			<div class="pull-icon">
				<a id="pull"></a>
			</div>
			<div class="cssmenu">
				<ul>
					<li><a href="index.html">首页</a></li>
					<li><a href="about.html">企业简介</a></li>
					<li><a href="noticeFrontList.jsp">公告</a></li>
					<li><a href="newsFrontList.jsp">新闻</a></li>
					<li><a href="product.html">产品介绍</a></li>
					<li class="last"><a href="contact.html">联系我们</a></li>
				</ul>
			</div>
			<!--清除浮动-->
			<div class="clear"></div>
		</div>
	</div>

	<div class="second_banner">
		<img src="img/notice.jpg">
	</div>

	<div class="container">
		<div class="left">
			<div class="menu_plan">
				<div class="menu_title">
					公司动态<br> <span>notice of company</span>
				</div>
				<ul id="tab">
					<li><a href="#">公司公告</a></li>
				</ul>
			</div>
		</div>

		<div class="right">
			<div class="location">
				<span>当前位置：<a href="javascript:void(0)" id="a"><a
						href="#">公司公告</a></a></span>
				<div class="brief" id="b">
					<a href="#">公司公告</a>
				</div>
			</div>
			<div style="font-size: 14px; margin-top: 53px; line-height: 36px;">
				<div id="tab_con">
					<div id="tab_con_2"  >
						<table style="margin-top: 70px; width: 100%">
							<tbody>
								<tr class="tt_bg" style="text-align:center">

									<td>公告标题</td>
									<td>发布人</td>
									<td>发布时间</td>
									<td>详情</td>
								</tr>
								<%
										request.setCharacterEncoding("GBK");
										Notice notice = new Notice();
										String pageNum = request.getParameter("intPage");
										String toPage = request.getContextPath() + request.getServletPath()+ "?";
										String sOK = notice.ListNoticeFront(toPage, pageNum);
										if (sOK.equals("No")) {
											out.println("数据服务器出现错误！");
										} else {
											out.println(sOK);
										}
									%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="bottom">
		<div class="footer">
			<div class="address">
				Copyright 天码行空学习建站
				<br> 天码行空学习建站 <br>
				<a href="#">天码行空学习建站</a> 技术支持 <a
					href="../admin/login.jsp">后台</a>
			</div>
		</div>
	</div>
</body>
</html>