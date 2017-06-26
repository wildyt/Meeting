<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.HelloClient" %>
<%@ page import="com.Itest" %>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>管理系统</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<link href="css/login.css" rel="stylesheet" type="text/css">
	<script src="js/md5.js"></script>
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.js"></script>
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>
<div class="">

	<div class="" style="padding: 20px 0;">
		<br><br><br><br><br><br>
		<div class="container">
			<div class="row">
				<div class="col-md-offset-3 col-md-6">
					<form class="form-horizontal" >
						<span class="myhead" >会议管理系统</span>
						<span class="mylogin">用户登录</span>
						<div class="form-group">
							<input type="text" class="form-control" id="username" placeholder="用户名或电子邮件">
							<i class="fa fa-user"></i>

						</div>
						<div class="form-group help">
							<input type="password" class="form-control" id="password" placeholder="密　码">
							<i class="fa fa-lock"></i>
							<a href="www.baidu.com" class="fa fa-question-circle"></a>
						</div>
						<label id="error-lable"style="color: #c9302c">账号或密码错误</label>
						<div class="form-group">
							<div class="main-checkbox">
								<input type="checkbox" value="None" id="checkbox1" name="check"/>
								<label for="checkbox1"></label>
							</div>

							<span class="text">Remember me</span>
							<button onclick="return login()" style="outline: none" class="btn">登录</button>



						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="related">
	</div>
</div>
<script type="text/javascript">
	function login(){
	    var username=document.getElementById("username");
		var password_norm=document.getElementById("password");
		var password=hex_md5(password_norm.value);
		var error=document.getElementById("error-lable")
		error.style.display="none";
		password_norm.value="";
        $.ajax(
            {
				type:"post",
                url:"jsp/login.jsp",
                data:{username:username.value,password:password},
                error:function () {

                },
                success:function (username) {
                    alert(username);
                window.location.href="index.jsp?action=login.jsp";
				}
            }
            );

        return false;
    }
</script>
</body>
</html>