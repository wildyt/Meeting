<%--
  Created by IntelliJ IDEA.
  User: zhangxuri
  Date: 2017/6/21
  Time: 下午1:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String direct="Welcome.jsp";
    String guide="null.jsp";
    String username;
%>
<%
    if (null!=request.getParameter("action")){
        direct=request.getParameter("action");
        guide="guide.jsp";
        System.out.println("bu null");
    }
    else{
        direct="Welcome.jsp";
        guide="null.jsp";
        System.out.println("null");
    }
    if (null!=request.getParameter("username")){
        if (session.isNew()){
            session.setAttribute("username",request.getParameter("username"));
            username=request.getParameter("username");
        }
    }
    else {
        username= (String) session.getAttribute("username");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Bootstrap导航实例</title>
    <meta name="description" content="Bootstrap navbar Example">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link href="http://www.runoob.com/try//bootstrap/twitter-bootstrap-v2/docs/assets/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
        .socials {
            padding: 10px;
        }
    </style>
</head>
<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<jsp:include page="<%=guide%>"></jsp:include>
<jsp:include page="<%=direct%>"></jsp:include>
</body>
</html>

