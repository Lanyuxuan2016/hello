<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE HTML >
<html>
  <head>
    <title>��Ϣ��ʾҳ�� </title>
    <meta http-equiv="refresh" content="2">
    <script type="text/javascript">
    	function Timeout(){
    		try{
    			var url = "loadMes.jsp?action=show";
    			LoadTime.src = url;
    		} catch(e){
    			return false;
    		}
    	}
    	setTimeout("Timeout()",2000);
    </script>
  <script type="text/javascript" id="LoadTime"></script>  
  </head>
  
  <body bgcolor="#FFCCCC" onLoad="javascript:Timeout();">
  	
  	<span id="loadData">���ڼ������ݣ����Ե�Ŷ ......</span>
  	
  	
  </body>
</html>
