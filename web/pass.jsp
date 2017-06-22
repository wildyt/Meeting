<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-table.min.css">
</head>
<body>
<div>
    <br>
    <p style="text-align:center;font-size: larger" class=" col-lg-12 ">个人中心->注册审批</p>
    <p style="text-align:center;font-weight:bold;font-size: larger" class="col-lg-12 ">所有待审批注册信息</p>

</div>
<div class="container">
    <table id="table"
           class="table table-striped"
           data-toggle="table"
           data-url="data/data1.json"
           data-show-columns="true"
           data-search="true"
           data-show-refresh="true"
           data-show-toggle="true"
           data-pagination="true"
           data-cache="false"
           data-height="500">
        <thead>
        <tr>
            <th data-field="meetingname" data-formatter="idFormatter">姓名</th>
            <th data-field="roomname">账号名</th>
            <th data-field="begintime">联系电话</th>
            <th data-field="endtime">电子邮件</th>
            <th data-field="operation">操作</th>
        </tr>
        </thead>
    </table>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--<script src="assets/bootstrap2.3/js/bootstrap.min.js"></script>-->
<script src="js/jquery.base64.js"></script>
<script src="js/bootstrap-table.js"></script>
<script src="js/bootstrap-table-export.js"></script>
</body>
</html>
