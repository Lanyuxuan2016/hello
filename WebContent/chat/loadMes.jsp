<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<jsp:useBean id="msgs" class="java.util.HashMap" scope="application" />

<%
	request.setCharacterEncoding("GBk");
	String action = request.getParameter("action");
	if("login".equals(action)){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		session.setAttribute("username", username);
		String msg = "欢迎"+username+" 光临潭州学院聊天室 ！<br />";
		msgs.put(username,msg);
		response.sendRedirect("main.jsp");
	}
	
	if("write".equals(action)){
		String newMsg = request.getParameter("msg");
		String nm = session.getAttribute("username")+": "+newMsg;
		//out.print("聊天记录："+nm);
		//发消息时，将所有聊天室的里边聊天记录进行叠加
		Iterator it = msgs.keySet().iterator();
		String username = null;
		String msg = null;
		while(it.hasNext()){
			username = (String)it.next(); // 用户名
			msg = (String)msgs.get(username); // 消息
			msg = msg+"<br />"+nm;
			msgs.put(username, msg);
		}
		response.sendRedirect("writerMes.jsp");
	}
	
	if("show".equals(action)){
		//  显示用的聊天记录
		String username = (String)session.getAttribute("username");
		String msg = (String)msgs.get(username);
		out.println("loadData.innerHTML=\""+msg+"\";");
	}
	

%>
