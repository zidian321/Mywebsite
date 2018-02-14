<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>欢迎</title>
  </head>
  <body>
    <font color="red" size="10"> ${message}</font>
    ${message}
    
      <body>
    <form action="loginAction.action" method="post">
       用户名：<input name="username"><br>
       密 码：    <input type="password" name="userpass"><br>
      <input type="submit" value="登录">
      <input type="reset"  value="取 消">
    </form>
  </body>
  </body>
</html>