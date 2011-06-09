<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Save User</title>
    
  </head>
  
  <body>
   
    <h1><font color="red">Save User</font></h1>
    
    <s:form action="saveUser">
    	<s:textfield name="user.firstname" label="%{getText('firstname')}"></s:textfield>
    	<s:textfield name="user.lastname" label="%{getText('lastname')}"></s:textfield>
    	<s:textfield name="user.age" label="%{getText('age')}"></s:textfield>
		<s:submit></s:submit>
		    
    </s:form>
   
  </body>
</html>
