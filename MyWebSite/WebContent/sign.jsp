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
    alert("�������û���������");
    }else{
 var name,pass;  
 name= document.getElementById("username").value;  
 pass= document.getElementById("password").value;   
 $.ajax({  
    async:true,  
    type: "POST",  
    url: "signAction.action",//ע��·��  (��̨��½��֤�ķ���)
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
  <head><title>ע�����</title></head>
  <body>
   <form action="#" method="post">
       �û�����<input name="username" id=username><br>
       �� �룺 <input type="password" id=password name="userpass"><br>
      <input class="btn btn-success" type="button" value="ע��" onclick="signin();">
      <input type="reset"  value="ȡ ��">
   </form>   
  </body>
 <a href="welcome.jsp">��˵�¼</a>
</html>