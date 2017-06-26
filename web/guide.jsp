<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <title>Bootstrap导航实例</title>
    <meta name="description" content="Bootstrap navbar Example">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/guide.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/down.js"></script>
    <style type="text/css">
        .socials {
            padding: 10px;
        }
    </style>
</head>
<body>
<%--<div id="fb-root"></div>--%>
<%--<script>(function(d, s, id) {--%>
    <%--var js, fjs = d.getElementsByTagName(s)[0];--%>
    <%--if (d.getElementById(id)) return;--%>
    <%--js = d.createElement(s); js.id = id;--%>
    <%--js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";--%>
    <%--fjs.parentNode.insertBefore(js, fjs);--%>
<%--}(document, 'script', 'facebook-jssdk'));</script>--%>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <ul class="nav">
                <li class="active">
                    <a class="brand" href="index.jsp?action=HomePage.jsp">Meeting</a>
                </li>
            </ul>
            <ul class="nav">
                <li class="dropdown">
                    <a href="#"
                       class="dropdown-toggle"
                       data-toggle="dropdown">
                        个人中心
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="index.jsp?action=NewNoti.html">最新通知</a></li>
                        <li><a href="index.jsp?action=MyResver.html">我的预定</a></li>
                        <li><a href="index.jsp?action=MyMeeting.html">我的会议</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav">
                <li class="dropdown">
                    <a href="#"
                       class="dropdown-toggle"
                       data-toggle="dropdown">
                        人员管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="index.jsp?action=DepartManage.html">部门管理</a></li>
                        <li><a href="index.jsp?action=Register.html">员工注册</a></li>
                        <li><a href="index.jsp?action=RegistPass.html">注册审批</a></li>
                        <li><a href="index.jsp?action=SearchPersonnel.html">搜索员工</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav">
                <li class="dropdown">
                    <a href="#"
                       class="dropdown-toggle"
                       data-toggle="dropdown">
                        会议预定
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="index.jsp?action=AddMeetingRoom.html">添加会议室</a></li>
                        <li><a href="index.jsp?action=SeeMeetingRoom.html">查看会议室</a></li>
                        <li><a href="index.jsp?action=ReserveMeeting.html">预定会议</a></li>
                        <li><a href="index.jsp?action=SearchMeeting.html">搜索会议</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav pull-right">
                <li class="dropdown">
                    <a href="#"
                       class="dropdown-toggle"
                       data-toggle="dropdown">
                        Social
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="socials"><!-- 将这个标签放置在要渲染的+ 1按钮的位置 -->
                            <g:plusone annotation="inline" width="150"></g:plusone>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>