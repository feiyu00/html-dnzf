﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link type="text/css" rel="stylesheet" media="all"
	href="../styles/global.css" />
<link type="text/css" rel="stylesheet" media="all"
	href="../styles/global_color.css" />
<script language="javascript" type="text/javascript">
	//保存成功的提示消息
	function showResult() {
		showResultDiv(true);
		window.setTimeout("showResultDiv(false);", 3000);
	}
	function showResultDiv(flag) {
		var divResult = document.getElementById("save_result_info");
		if (flag)
			divResult.style.display = "block";
		else
			divResult.style.display = "none";
	}
</script>
</head>
<body>
	<!--Logo区域开始-->
	<div id="header">
		<img src="../images/logo.png" alt="logo" class="left" /> <a href="#">[退出]</a>
	</div>
	<!--Logo区域结束-->
	<!--导航区域开始-->
	<div id="navi">
		<ul id="menu">
			<li><a href="../index.html" class="index_off"></a></li>
			<li><a href="../role/role_list.html" class="role_off"></a></li>
			<li><a href="../admin/admin_list.html" class="admin_on"></a></li>
			<li><a href="../fee/fee_list.html" class="fee_off"></a></li>
			<li><a href="../account/account_list.html" class="account_off"></a></li>
			<li><a href="../service/service_list.html" class="service_off"></a></li>
			<li><a href="../bill/bill_list.html" class="bill_off"></a></li>
			<li><a href="../report/report_list.html" class="report_off"></a></li>
			<li><a href="../user/user_info.html" class="information_off"></a></li>
			<li><a href="../user/user_modi_pwd.html" class="password_off"></a></li>
		</ul>
	</div>
	<!--导航区域结束-->
	<!--主要区域开始-->
	<div id="main">
		<div id="save_result_info" class="save_success">保存成功！</div>
		<form action="${initParam.root}add.action" method="post"
			class="main_form">

			<div class="text_info clearfix">
				<span>姓名：</span>
			</div>
			<div class="input_info">
				<input type="text" name="name" /> <span class="required">*</span>
				<!--   <div class="validate_msg_long error_msg">20长度以内的汉字、字母、数字的组合</div> -->
			</div>
			<div class="text_info clearfix">
				<span>密码：</span>
			</div>
			<div class="input_info">
				<input type="text" name="upass" />
			</div>

			<div class="text_info clearfix">
				<span>管理员账号：</span>
			</div>
			<div class="input_info">
				<input type="text" name="uname" />
			</div>
			<div class="text_info clearfix">
				<span>电话：</span>
			</div>
			<div class="input_info">
				<input type="text" name="tel" /> <span class="required">*</span>
			</div>

			<div class="text_info clearfix">
				<span>Email：</span>
			</div>
			<div class="input_info">
				<input type="text" class="width200" name="email" /> <span
					class="required">*</span>

			</div>

			<div class="text_info clearfix">
				<span>创建时间：</span>
			</div>
			<div class="input_info">
				<input type="text" class="width200" name="date" />
			</div>
			<div class="text_info clearfix">
				<span>rol：</span>
			</div>
			<div class="input_info">
				<input type="text" name="rol" />
			</div>
			<div class="text_info clearfix">
				<span>角色：</span>
			</div>
			<div class="input_info_high">
				<div class="input_info_scroll">
					<ul>
						<li><input type="checkbox" />超级管理员</li>
						<li><input type="checkbox" />账务账号管理员</li>
						<li><input type="checkbox" />业务账号管理员</li>
						<li><input type="checkbox" />账务账号管理员</li>
						<li><input type="checkbox" />业务账号管理员</li>
						<li><input type="checkbox" />账务账号管理员</li>
						<li><input type="checkbox" />业务账号管理员</li>
					</ul>
				</div>
				<span class="required">*</span>
				<!--  <div class="validate_msg_tiny error_msg">至少选择一个</div> -->
			</div>
			<div class="button_info clearfix">
				<input type="submit" value="保存" class="btn_save"
					onclick="showResult();" /> <input type="button" value="取消"
					class="btn_save" />
			</div>
		</form>
	</div>
	<!--主要区域结束-->
	<div id="footer"></div>
</body>
</html>
