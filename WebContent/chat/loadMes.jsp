<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<jsp:useBean id="msgs" class="java.util.HashMap" scope="application" />

<%
	request.setCharacterEncoding("GBk");
	String action = request.getParameter("action");
	if("login".equals(action)){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		session.setAttribute("username", username);
		String msg = "��ӭ"+username+" ����̶��ѧԺ������ ��<br />";
		msgs.put(username,msg);
		response.sendRedirect("main.jsp");
	}
	
	if("write".equals(action)){
		String newMsg = request.getParameter("msg");
		String nm = session.getAttribute("username")+": "+newMsg;
		//out.print("�����¼��"+nm);
		//����Ϣʱ�������������ҵ���������¼���е���
		Iterator it = msgs.keySet().iterator();
		String username = null;
		String msg = null;
		while(it.hasNext()){
			username = (String)it.next(); // �û���
			msg = (String)msgs.get(username); // ��Ϣ
			msg = msg+"<br />"+nm;
			msgs.put(username, msg);
		}
		response.sendRedirect("writerMes.jsp");
	}
	
	if("show".equals(action)){
		//  ��ʾ�õ������¼
		String username = (String)session.getAttribute("username");
		String msg = (String)msgs.get(username);
		out.println("loadData.innerHTML=\""+msg+"\";");
	}
	

%>
