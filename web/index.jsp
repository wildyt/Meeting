<%@ page import="com.sun.AdministratorEntity" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="Utils.HibernateUtils" %>
<%@ page import="org.hibernate.Transaction" %><%--
  Created by IntelliJ IDEA.
  User: zhangxuri
  Date: 2017/6/21
  Time: 上午8:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <%
  %>
  <body>
  <h2>使用JavaBean</h2>
  <jsp:useBean id="test" class="com.sun.AdministratorEntity"></jsp:useBean>
  <jsp:setProperty name="test" property="admId" value="100"></jsp:setProperty>
  <jsp:setProperty name="test" property="admName" value="zhang"></jsp:setProperty>
  <p>print...</p>
  <br>
  <jsp:getProperty name="test" property="admName"></jsp:getProperty>
  <p>print form db...</p>
  <br>
  </body>
</html>
