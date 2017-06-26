<%@ page import="com.HelloClient" %>
<%@ page import="com.Itest" %>
<%@ page import="javax.xml.ws.Response" %><%--
  Created by IntelliJ IDEA.
  User: zhangxuri
  Date: 2017/6/23
  Time: 上午10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String username;
    String password;
    HelloClient helloClient;
    Itest itest;

%>
<%
    System.out.println(123);
    username=request.getParameter("username");
    password=request.getParameter("password");
    helloClient =new HelloClient();
    itest=helloClient.gettest();
    System.out.println(username);
    System.out.println(password);
    System.out.println(itest.login(username,password));
    if (itest.login(username,password)==null){
        response.sendError(-1);
    }
    else{
        response.getWriter().write(username);
    }
%>
