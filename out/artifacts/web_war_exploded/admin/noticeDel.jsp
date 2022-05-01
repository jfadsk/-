<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="jspSamples.unit7.websiteSample.*"%>
<%
	request.setCharacterEncoding("GBK"); //注释:设置编码方式为GBK
%>
<%
	Notice notice = new Notice();
	String IP = request.getRemoteAddr(); //得到客户端Ip地址
	String AdminName = (String) session.getAttribute("AdminName");
	String NewsID = request.getParameter("NewsID");

	if (notice.DelNotice(NewsID))
		out.print("<script>alert('删除公告成功!');location.href='notice.jsp';</script>");
	else {
		out.print("<script>alert('删除公告失败!');location.href='notice.jsp';</script>");
	}
%>
