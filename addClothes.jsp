<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>添加商品</title>
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
     .linear{
          background-image:linear-gradient(to top, #FFF,#D19275);
          height:400px;
     }
    </style>
  </head>
  
  <body>
  <div class="linear">
  <br/> <br/> <br/>
  <div style="margin: 10px">
  <form style="width:30%" action="${pageContext.request.contextPath }/manager/ClothesServlet?method=add" method="post" enctype="multipart/form-data">
   <div class="form-group">
    	<label>摄影师：</label>
    			<input class="form-control" type="text" name="name">	
    	</div>
  <div class="form-group">
    		<label>成交照片数量：</label>
    			<input class="form-control" type="text" name="brand">
    	</div>
  <div class="form-group">
    		<label>售价：</label>
    			<input class="form-control" type="text" name="price">
    	</div>
 <div class="form-group">
    		<label>图片：</label>
    			<input type="file" name="file">
    	</div>
 <div class="form-group">
    		<label>摄影师描述：</label>
    			<textarea class="form-control" rows="5" cols="40" name="description"></textarea>
    	</div>
<div class="form-group">
    		<label>所属分类：</label>
    			<select name="categoryId">
    				<c:forEach var="c" items="${categories }">
    					<option value="${c.id }">${c.name }</option>
    				</c:forEach>
    			</select>
    	</div>
    			<input class="btn btn-default" type="reset" value="清空">
    			<input class="btn btn-default" type="submit" value="提交">
   
    </form>
    </div>
    </div>
    
    <script src="../bootstrap/jquery.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
