<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>基于Bootstrap的简洁登录界面设计效果|DEMO_jQuery之家-自由分享jQuery、html5、css3的插件库</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
    <style type="text/css">
        .form-bg{
            background: #4D4D4D;
        }
        .form-horizontal{
            background: #fff;
            padding-bottom: 40px;
            border-radius: 15px;
            text-align: center;
        }
        .form-horizontal .heading{
            display: block;
            font-size: 35px;
            font-weight: 700;
            padding: 35px 0;
            border-bottom: 1px solid #f0f0f0;
            margin-bottom: 30px;
        }
        .form-horizontal .form-group{
            padding: 0 40px;
            margin: 0 0 25px 0;
            position: relative;
        }
        .form-horizontal .form-control{
            background: #f0f0f0;
            border: none;
            border-radius: 20px;
            box-shadow: none;
            padding: 0 20px 0 45px;
            height: 40px;
            transition: all 0.3s ease 0s;
        }
        .form-horizontal .form-control:focus{
            background: #e0e0e0;
            box-shadow: none;
            outline: 0 none;
        }
        .form-horizontal .form-group i{
            position: absolute;
            top: 12px;
            left: 60px;
            font-size: 17px;
            color: #c8c8c8;
            transition : all 0.5s ease 0s;
        }
        .form-horizontal .form-control:focus + i{
            color: #00b4ef;
        }
        .form-horizontal .fa-question-circle{
            display: inline-block;
            position: absolute;
            top: 12px;
            right: 60px;
            font-size: 20px;
            color: #808080;
            transition: all 0.5s ease 0s;
        }
        .form-horizontal .fa-question-circle:hover{
            color: #000;
        }
        .form-horizontal .main-checkbox{
            float: left;
            width: 20px;
            height: 20px;
            background: #11a3fc;
            border-radius: 50%;
            position: relative;
            margin: 5px 0 0 5px;
            border: 1px solid #11a3fc;
        }
        .form-horizontal .main-checkbox label{
            width: 20px;
            height: 20px;
            position: absolute;
            top: 0;
            left: 0;
            cursor: pointer;
        }
        .form-horizontal .main-checkbox label:after{
            content: "";
            width: 10px;
            height: 5px;
            position: absolute;
            top: 5px;
            left: 4px;
            border: 3px solid #fff;
            border-top: none;
            border-right: none;
            background: transparent;
            opacity: 0;
            -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
        }
        .form-horizontal .main-checkbox input[type=checkbox]{
            visibility: hidden;
        }
        .form-horizontal .main-checkbox input[type=checkbox]:checked + label:after{
            opacity: 1;
        }
        .form-horizontal .text{
            float: left;
            margin-left: 7px;
            line-height: 20px;
            padding-top: 5px;
            text-transform: capitalize;
        }
        .form-horizontal .btn{
            float: right;
            font-size: 14px;
            color: #fff;
            background: #4D4D4D;
            border-radius: 30px;
            padding: 10px 25px;
            border: none;
            text-transform: capitalize;
            transition: all 0.5s ease 0s;
        }
        @media only screen and (max-width: 479px){
            .form-horizontal .form-group{
                padding: 0 25px;
            }
            .form-horizontal .form-group i{
                left: 45px;
            }
            .form-horizontal .btn{
                padding: 10px 20px;
            }
        }
    </style>
    <!--[if IE]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <![endif]-->
</head>
<body>

<div class="demo form-bg">
    <div class="demo form-bg" style="padding: 20px 0;">
        <div class="container">
            <div class="row">
                <div class="col-md-offset-3 col-md-6">
                    <form class="form-horizontal">
                        <span class="heading">员工注册</span>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">姓名：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="inputUserName" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">账户名：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="inputUserZhangName" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">密码：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="inputPassword" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">确认密码：</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="inputSamePassword" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">联系电话：</label>
                            <div class="col-sm-8">
                                <input type="tel" class="form-control" id="inputTele" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">电子邮件：</label>
                            <div class="col-sm-8">
                                <input type="email" class="form-control" id="inputEmail" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">所在部门：</label>
                            <div class="col-sm-8">
                                <select class="form-control">
                                    <option value="0">技术部</option>
                                    <option value="1">财务部</option>
                                    <option value="2">人事部</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-offset-3 col-md-7">
                            <button type="submit" class="btn col-md-offset3 ">提交</button>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label"></label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="related">
        <br>
    </div>
</div>

</body>
</html>