
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>显示订单</title>
    <link href="../css/table.css" rel="stylesheet" type="text/css"/>
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
    <h2>我的订单</h2>
    <table width="60%" border="1" align="center" style="text-align: center;">
    	<tr>
    		<th>订单号</th>
    		<th>用户</th>
    		<th>订单时间</th>
    		<th>订单总价</th>
    		<th>订单状态</th>
    		<th>操作</th>
    	</tr>
    	<c:forEach var="order" items="${orders }">
    		<tr>
    			<td>${order.id }</td>
	    		<td>${order.user.username }</td>
	    		<td>${order.orderTime }</td>
	    		<td>${order.price }</td>
	    		<td>${order.state==true?'已接单':'未接单' }</td>
	    		<td>
	    			<a href="${pageContext.request.contextPath }/manager/OrderDetailServlet?orderId=${order.id}">查看明细</a>
	    		</td>
    		</tr>
    	</c:forEach>
    	
	</table>
	</div>
  </body>
</html>
