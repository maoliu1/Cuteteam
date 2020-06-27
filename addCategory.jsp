<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>添加分类</title>
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
    <form style="width:30%" action="${pageContext.request.contextPath }/manager/CategoryServlet?method=add" method="post">
    	<div class="form-group"><label>分类名称：</label><input class="form-control" type="text" name="name"></div>
    	<div class="form-group"><label>分类描述：</label><textarea class="form-control" rows="5" cols="40" name="description"></textarea></div>
    	<input class="btn btn-default" type="submit" value="添加">
    </form>
    </div>
    </div>
    <script src="../bootstrap/jquery.min.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
