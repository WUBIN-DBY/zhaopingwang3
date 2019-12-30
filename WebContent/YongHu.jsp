<%@page import="com.WUT.RW.model.Yonghu"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
 <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
<form method="post" action="" id="listform">

    <table class="table table-hover text-center">
      <tr>
        <th>用户姓名</th>
        <th>用户电话</th>
        <th>用户性别</th>
        <th>用户地址</th>
        <th>用户邮箱地址</th>
        <th>操作</th>
      </tr>
      <% List<Yonghu> yh=(List<Yonghu>)request.getAttribute("yh");
      for(Yonghu y:yh){
      %>
      <tr>
           <td class="center"><%=y.getYonghuming() %></td>
           <td class="center"><%=y.getYonghudianhua() %></td>
            <td class="center"><%=y.getYonghuxingbie() %></td>
           <td class="center"><%=y.getYonghudizhi() %></td>
           <td class="center"><%=y.getYonghuemaildizhi()%></td>  
           <td><div class="button-group"> <a class="button border-main" href="YongHuServlet?method=getYonghuInfo&yonghudianhua<%=y.getYonghudianhua()%>"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div></td>
      </tr>
      <%} %>
      <tr>
        <td colspan="8"><div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div></td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">
//单个删除
function del(id,mid,iscid){
	if(confirm("您确定要删除吗?")){
		
	}
}
</script>
</body>
</html>