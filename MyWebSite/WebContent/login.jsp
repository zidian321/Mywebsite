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

function loginindex(){
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
    dataType:"text",  
    success:function(data){
    	console.log(data);
      if(data=="1"){
        alert("注册成功！")
      }else{
       alert("注册失败");
      }  
    }  
});  
}}
</script>
<html>
  <head><title>注册界面</title></head>
  <body>
 
       用户名：<input name="username" id=username><br>
       密 码：    <input type="password" id=password name="userpass"><br>
      <input class="btn btn-success" type="button" value="注册" onclick="loginindex();">
      <input type="reset"  value="取 消">
  </body>
</html>