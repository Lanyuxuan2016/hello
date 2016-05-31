<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE HTML >
<html>
  <head>
    <title>输入短消息页面</title>
    <script type="text/javascript">
    	
    
    </script>
    
  </head>
  <body bgcolor="#CCCCFF">
  	
  	<form action="loadMes.jsp?action=write" method="post" name="form1">
  		<%=session.getAttribute("username") %> <input type="text" name="msg" id="msg" size="60" autofocus x-webkit-speech/>
  		<input type="submit" value="发   送"/>
  	</form>
  	
  </body>
</html>
