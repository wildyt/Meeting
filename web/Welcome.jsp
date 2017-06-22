<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>hello world</title>
</head>
<body >
<div class="msg_desc" style="position:absolute; width:100%; height:100%; z-index:-1">
    <img style="width:100%; height:100%;overflow:hidden;" src="pictures/welcome.jpg" alt="">
</div>
<div z-index:1 >
    <jsp:include page="login.jsp"></jsp:include>
</div>
</body>
</html>