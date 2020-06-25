<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>首页体</title>
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <style type="text/css">
     .linear{
          background-image:linear-gradient(to top, #FFF,#D19275);
          height:400px;
     }
    </style>
  </head>
  
  <body style="text-align:center;margin-top: 20px;">
    <div class="linear">
  <br/> <br/> <br/>
    <div id="content" style="margin:0 auto;width:840px;">
    	<div id="category" style="float:left; width:100px; border:1px solid white; text-align:left; height:400px;"> 
    		分类：
    		<ul>		
	    		<c:forEach var="category" items="${categories }">
	    			<li>
	    				<a href="${pageContext.request.contextPath }/client/IndexServlet?method=listClothesWithCategory&categoryId=${category.id}">${category.name }</a>
	    			</li>
	    		</c:forEach>
    		</ul>	
    	</div>
    	<div id="clothesandpage" style="float:left; margin-left:30px;">   		
    		<div id="clothes">
    			<c:forEach var="clothes" items="${page.list }">
    				<div id="clothes" style="height:150; margin-top:20px;">
    					<div id="image" style="float:left;">
    						<img src="${pageContext.request.contextPath }/images/${clothes.image}" height=150 width=100>
    					</div>
    					<div id="bookInfo" style="float:left; text-align:left;">
    						<ul>
    							摄影师：${clothes.name }
    							<br/>
    							成交照片数量：${clothes.brand }
    							<br/>
    							售价：${clothes.price }
    							<br/>
    								<a href="${pageContext.request.contextPath }/client/BuyServlet?clothesId=${clothes.id}">加入购物车</a>
    							
    						</ul>
    					</div>
    				</div>
    				<div style="clear:both"></div><!-- 做div浮动后，为了不影响后续页面的显示，在这里清楚浮动效果 -->
    			</c:forEach>
    		</div>
    		<div style="clear:both"></div><!-- 做div浮动后，为了不影响后续页面的显示，在这里清楚浮动效果 -->
    		<div id="page" style="margin-top:200px; text-align:center;">
    			第[${page.pageNum }]页 &nbsp;&nbsp;
			    <c:forEach var="pageNum" begin="${page.startPage }" end="${page.endPage }">
			    	[<a href="${pageContext.request.contextPath }/client/IndexServlet?method=${param.method }&pageNum=${pageNum}&categoryId=${param.categoryId}">${pageNum }</a>]
			    </c:forEach>
			    &nbsp;&nbsp;
			    总共[${page.totalPage }]页，共[${page.totalRecord }]条记录
    		</div>
    	</div>
    </div>
    <script src="../bootstrap/jquery.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    </div>
  </body>
</html>
