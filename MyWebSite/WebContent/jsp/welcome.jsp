<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>��ӭ</title>
  </head>
  <body>
    <font color="red" size="10"> ${message}</font>
    ${message}
    
      <body>
    <form action="loginAction.action" method="post">
       �û�����<input name="username"><br>
       �� �룺    <input type="password" name="userpass"><br>
      <input type="submit" value="��¼">
      <input type="reset"  value="ȡ ��">
    </form>
  </body>
  </body>
</html>