<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<script  src="js/jquery.js">
</script>
  <script type="text/javascript">
   function testjquery()
   {
    var user_name=$("#test").attr("value");
    alert(user_name);
    }
  </script>
<script type="text/javascript">

function signin(){
	//alert("dsd");

    if(document.getElementById("username").value==''||document.getElementById("password").value==''){
    alert("请输入用户名和密码");
    }else{
 var name,pass;  
 name= document.getElementById("username").value;  
 pass= document.getElementById("password").value;   
 $.ajax({  
    async:true,  
    type: "POST",  
    url: "signAction.action",//注意路径  (后台登陆验证的方法)
    data:{"username":name,"password":pass}, 
    dataType: "json", 
    success:function(data){
    	console.log(data);
      if(data.status=="1"){
        alert(data.message)
      }else{
       alert(data.message);
      }  
    }  
});  
}}
</script>
<html>
  <head><title>注册界面</title></head>
  <body>
   <form action="#" method="post">
       用户名：<input name="username" id=username><br>
       密 码： <input type="password" id=password name="userpass"><br>
      <input class="btn btn-success" type="button" value="注册" onclick="signin();">
      <input type="reset"  value="取 消">
   </form>   
  </body>
 <a href="welcome.jsp">点此登录</a>
</html>