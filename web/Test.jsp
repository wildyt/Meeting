<%@ page import="com.HelloClient" %>
<%@ page import="com.Itest" %><%--
  Created by IntelliJ IDEA.
  User: zhangxuri
  Date: 2017/6/23
  Time: 上午9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%!
   HelloClient helloClient;
   Itest itest;
%>
<%
    helloClient=new HelloClient();
    itest=helloClient.gettest();
%>
<body>
<%=itest.login("zyl123","123456")%>
</body>
</html>
