<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    
    <h1><font color="red">Update User</font></h1>
    
    <s:form action="updateUser">
    	
    	<table border="1">
    		<tr>
    			<td>
    				<s:hidden name="user.id" value="%{user.id}"></s:hidden>
    			</td>
    		</tr>
    		
    		<tr>
    			<td>
    				<s:textfield name="user.firstname" value="%{user.firstname}" label="%{getText('firstname')}"></s:textfield>
    			</td>
    		</tr>
    		
    		<tr>
    			<td>
    				<s:textfield name="user.lastname" value="%{user.lastname}" label="%{getText('lastname')}"></s:textfield>
    			</td>
    		</tr>
    		
    		<tr>
    			<td>
    				<s:textfield name="user.age" value="%{user.age}" label="%{getText('age')}"></s:textfield>
    			</td>
    		</tr>
    		
    		<tr>
    			<td>
    				<s:submit></s:submit>
    			</td>
    		</tr>
    	</table>
    	
    </s:form>
    
  </body>
</html>
