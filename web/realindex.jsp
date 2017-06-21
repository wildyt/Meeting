<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Bootstrap导航实例</title>
    <meta name="description" content="Bootstrap navbar Example">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
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
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <ul class="nav">
                <li class="active">
                    <a class="brand" href="#">Home</a>
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
                        <li><a href="#">最新通知</a></li>
                        <li><a href="#">我的预定</a></li>
                        <li><a href="#">我的会议</a></li>
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
                        <li><a href="#">部门管理</a></li>
                        <li><a href="register.jsp">员工注册</a></li>
                        <li><a href="#">注册审批</a></li>
                        <li><a href="#">搜索员工</a></li>
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
                        <li><a href="#">添加会议室</a></li>
                        <li><a href="#">查看会议室</a></li>
                        <li><a href="#">预定会议</a></li>
                        <li><a href="#">搜索会议</a></li>
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
                        <li class="socials"><div class="fb-like" data-send="false" data-width="150" data-show-faces="true"></div></li>
                        <li class="socials"><a href="https://twitter.com/share" class="twitter-share-button">Tweet</a>
                            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<script src="http://www.runoob.com/try/bootstrap/twitter-bootstrap-v2/docs/assets/js/jquery.js"></script>
<script src="http://www.runoob.com/try/bootstrap/twitter-bootstrap-v2/docs/assets/js/bootstrap-dropdown.js"></script>
<script type="text/javascript">
    (function() {
        var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
        po.src = 'https://apis.google.com/js/plusone.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
    })();
</script>
</body>
</html>