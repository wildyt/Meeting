<%@ page import="com.HelloClient" %>
<%@ page import="com.Itest" %>
<%@ page import="net.sf.json.JSONArray" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="net.sf.json.JSONObject" %><%--
  Created by IntelliJ IDEA.
  User: zhangxuri
  Date: 2017/6/26
  Time: 下午12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String names;
    HelloClient helloClient;
    Itest itest;
    JSONArray jsonArray=new JSONArray();
    List<String> MeetingRoomName=new ArrayList<String>();
%>
<%
    helloClient =new HelloClient();
    itest=helloClient.gettest();
    names=itest.show_allmeetingroom();
    jsonArray=JSONArray.fromObject(names);
    response.getWriter().write(names);

%>