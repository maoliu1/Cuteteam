<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>首页头</title>
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
     .linear{
          background-image:linear-gradient(to top, #FFF,#D19275);
          height:400px;
     }
    </style>
  </head>
  
  <body style="text-align:center;">
  <div class="linear">
  <br/> <br/> <br/>
  <h1><b><font size="20">约拍系统</font></b></h1>
    <br/>
    <div>
	    <a href="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" target="body">摄影师</a>
	     <br/>
	      <br/>
	    <a href="${pageContext.request.contextPath }/client/listCart.jsp" target="body">查看购物车</a>
	     <br/>
	      <br/>
	    <a href="${pageContext.request.contextPath }/client/ClientListOrderServlet?userId=${user.id}" target="body"">查看订单</a>
	     <br/>
	      <br/>
    </div>
    <div style="float:center;margin-right: 10px;">
    	<c:if test="${user==null }"> 
	    <form class="form-inline" action="${pageContext.request.contextPath }/client/LoginServlet" method="post">
	    	<div class="form-group"><input class="form-control" placeholder="用户名" type="text" name="username"></div>
	    	 <br/>
	    	  <br/>
	    	<div class="form-group"><input class="form-control"  type="password" placeholder="密码" name="password"></div>
	    	 <br/>
	    	  <br/>
	    	<input class="btn btn-default" type="submit" value="登陆">
	    	 <br/>
	    	  <br/>
	    	<input class="btn btn-default" type="button" value="注册" onclick="javascript:window.location.href='${pageContext.request.contextPath }/client/register.jsp'">
	    </form>
	    </c:if>
	    
	    <c:if test="${user!=null }">
	    	欢迎您：${user.username } <a href="${pageContext.request.contextPath }/client/LoginOutServlet">注销</a>
	    </c:if>
	    </div>
	    </div>
	    <script src="../bootstrap/jquery.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
