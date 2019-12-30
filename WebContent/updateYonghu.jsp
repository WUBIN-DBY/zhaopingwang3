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
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>修改内容</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="">  
      <div class="form-group">
        <div class="label">
          <label>用户姓名：</label>
        </div>
        <div class="field"> 
          <script src="js/laydate/laydate.js"></script>
         <input type="text" class="input w50" value="" name="yonghuming" data-validate="required:请输用户姓名，姓名不能为空" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>用户电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="yonghudianhua" value="" data-validate="required:请输用户电话，该项不能为空"  />
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label>用户性别：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="yonghuxingbie" value="" />
          <div class="tips"></div>
        </div>
      </div>
      
          <div class="form-group">
        <div class="label">
          <label>用户地址：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="yonghudizhi" value=""  />
          <div class="tips"></div>
        </div>
      </div>
      
      
          <div class="form-group">
        <div class="label">
          <label>用户邮箱地址：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="yonghuemaildizhi" value="" data-validate="required:请输用户邮箱地址，邮箱地址不能为空" />
          <div class="tips"></div>
        </div>
      </div>
      

      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body></html>