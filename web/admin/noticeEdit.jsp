<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="jspSamples.unit7.websiteSample.*"%>
<%
	request.setCharacterEncoding("GBK"); 				//设置编码方式为GBK
	Notice notice = new Notice();
	String[] sa = null;
	String id = request.getParameter("noticeId");
	String Action = request.getParameter("Action");
	if (Action != null && Action.equals("Edit")) {
		String[] s = new String[2];
		s[0] = request.getParameter("upd_NewsTitle");
		s[1] = request.getParameter("upd_NewsContent");

		String sOK = notice.EditNotice(s, id);
		if (sOK.equals("Yes")) {
			out.println("<script>alert('修改公告成功!');location.href='notice.jsp';</script>");
			return;
		} else {
			out.println("<script>alert('修改公告失败!');location.href='notice.jsp';</script>");
			return;
		}
	}
%>
