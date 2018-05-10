<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  <title>注册界面</title>
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
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
  </head>
  <body>
  <div class="container">
   <div class="row">
   <div class="col-md-6">
   <table class="table table-striped +">
   <tr class="active">
       <td> 用户名：</td>   <td> <input name="username" id=username></td>
   </tr>
   <tr>    
       <td>密 码： </td> <td> <input type="password" id=password name="userpass"></td>
   </tr>    
      
   </table>
   </div>
   </div> 
   <input class="btn btn-success" type="button" value="注册" onclick="signin();">
    
   </div>   
  </body>
  
 <a href="welcome.jsp">点此登录</a>
</html>