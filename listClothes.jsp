<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>显示所有商品</title>
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
    <h2>摄影师信息</h2>
    <table border="1" width="60%" align="center">
    	<tr style="text-align:center">
  			<th>摄影师</th>
  			<th>数量</th>
  			<th>价格</th>
  			<th>图片</th>
  			<th>描述</th>
  		</tr>
  		<c:forEach var="clothes" items="${page.list }">
  			<tr style="text-align:center">
  				<td>${clothes.name }</td>
	  			<td>${clothes.brand }</td>
	  			<td>${clothes.price }</td>
	  			<td>
					<a href="${pageContext.request.contextPath }/images/${clothes.image}">查看图片</a>
				</td>
	  			<td>${clothes.description }</td>
  			</tr>
  		</c:forEach>
    </table>
    <br>
    当前第[${page.pageNum }]页 &nbsp;&nbsp;
    <c:forEach var="pageNum" begin="${page.startPage }" end="${page.endPage }">
    	[<a href="${pageContext.request.contextPath }/manager/ClothesServlet?method=list&pageNum=${pageNum}">${pageNum }</a>]
    </c:forEach>
    &nbsp;&nbsp;
    总共[${page.totalPage }]页，共[${page.totalRecord }]条记录
    </div>
  </body>
</html>
