<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@include file="/common.jspf"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>欢迎</title>
    
  </head>
  <body>
   <img src="image/top.png" width="100%" height="50%">
    <font color="red" size="10"> ${message}</font>
    <div style="margin-top:20px;">
    <form class="form-horizontal col-sm-offset-6" role="form" action="loginAction.action" method="post">
    
       <div class="form-group col-sm-offset-6" >
       <label for="firstname" class="col-sm-2 control-label">用户名：</label>
       <div class="col-sm-6"> <input name="username" class="form-control" id="firstname"></div>
       </div>
      <div class="form-group col-sm-offset-8" >
     <label for="lastname" class="col-sm-2 control-label">  密 码：  </label>  
     <div class="col-sm-6"><input class="form-control" type="password" name="userpass">
      </div>
      </div>
      <div class="form-group">
      <div class="col-sm-offset-2 col-sm-2"> 
      <input class="btn btn-default" type="submit" value="登录"> </div>

   

      <div class="col-sm-offset-0 col-sm-4"> 
      <a href="sign.jsp" class="btn btn-default col-sm-offset-6" role="button">点此注册</a>
      </div>
      </div>
    </form>
    </div>
  </body>
</html>