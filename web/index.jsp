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
</head>
<body>
<jsp:include page="<%=guide%>"></jsp:include>
<div>
<jsp:include page="<%=direct%>"></jsp:include>
</div>
</body>
</html>

