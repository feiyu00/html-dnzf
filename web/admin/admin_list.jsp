<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link type="text/css" rel="stylesheet" media="all"
	href="./styles/global.css" />
<link type="text/css" rel="stylesheet" media="all"
	href="./styles/global_color.css" />
<script language="javascript" type="text/javascript">
var result = "${result}";
if(result=="add"){
	alert("新增成功")
}
if(result=="update"){
	alert("更新成功")
}
if(result=="delete"){
	alert("删除成功")
}
	//显示角色详细信息
	function showDetail(flag, a) {
		var detailDiv = a.parentNode.getElementsByTagName("div")[0];
		if (flag) {
			detailDiv.style.display = "block";
		} else
			detailDiv.style.display = "none";
	}
	//重置密码
	function resetPwd() {
		alert("请至少选择一条数据！");
		//document.getElementById("operate_result_info").style.display = "block";
	}
	//删除
	function deleteAdmin() {
		var r = window.confirm("确定要删除此管理员吗？");
		document.getElementById("operate_result_info").style.display = "block";
	}
	//全选
	function selectAdmins(inputObj) {
		var inputArray = document.getElementById("datalist")
				.getElementsByTagName("input");
		for (var i = 1; i < inputArray.length; i++) {
			if (inputArray[i].type == "checkbox") {
				inputArray[i].checked = inputObj.checked;
			}
		}
	}
</script>
</head>
<body>
	<!--Logo区域开始-->
	<div id="header">
		<img src="./images/logo.png" alt="logo" class="left" /> <a href="#">[退出]</a>
	</div>
	<!--Logo区域结束-->
	<!--导航区域开始-->
	<div id="navi">
		<ul id="menu">
			<li><a href="./index.html" class="index_off"></a></li>
			<li><a href="./role/role_list.html" class="role_off"></a></li>
			<li><a href="${initParam.root}/checkUser?sign=1" class="admin_on"></a></li>
			<li><a href="./fee/fee_list.html" class="fee_off"></a></li>
			<li><a href="./account/account_list.html" class="account_off"></a></li>
			<li><a href="./service/service_list.html" class="service_off"></a></li>
			<li><a href="./bill/bill_list.html" class="bill_off"></a></li>
			<li><a href="./report/report_list.html" class="report_off"></a></li>
			<li><a href="./user/user_info.html" class="information_off"></a></li>
			<li><a href="./user/user_modi_pwd.html" class="password_off"></a></li>
		</ul>
	</div>
	<!--导航区域结束-->
	<!--主要区域开始-->
	<div id="main">
		<form action="search.action" method="post">
			<!--查询-->
			<div class="search_add">
				<div>
					模块： <select id="selModules" class="select_search">
						<option>全部</option>
						<option>角色管理</option>
						<option>管理员管理</option>
						<option>资费管理</option>
						<option>账务账号</option>
						<option>业务账号</option>
						<option>账单管理</option>
						<option>报表</option>
					</select>
				</div>
				<div>
					角色：<input type="text"  name="search" class="text_search width200" />
				</div>
				<div>
					<input type="submit" value="搜索" class="btn_search"/>
				</div>
				<input type="button" value="密码重置" class="btn_add"
					onclick="resetPwd();" /> 
					<input type="button" value="增加"
					class="btn_add" onclick="location.href='admin/admin_add.jsp';" />
			</div>
			<!--删除和密码重置的操作提示-->
			<div id="operate_result_info" class="operate_fail">
				<img src="../images/close.png"
					onclick="this.parentNode.style.display='none';" /> <span>删除失败！数据并发错误。</span>
				<!--密码重置失败！数据并发错误。-->
			</div>
			<!--数据区域：用表格展示数据-->
			<div id="data">
				<table id="datalist" border="1" cellspacing="0px" width="700px">
		<tr align="center">
			<td>id</td>
			<td>姓名</td>
			<td>登录名</td>
			<td>密码</td>
			<td>电话</td>
			<td>电子邮件</td>
			<td>授权日期</td>
			<td>拥有角色</td>
		</tr>
		<c:forEach items="${users}" var="user" >
			<tr align="center">
				<td>${user.id}</td>
				<td>${user.name}</td>
				<td>${user.uname}</td>
				<td>${user.upass}</td>
				<td>${user.tel}</td>
				<td>${user.email}</td>
				<td><fmt:formatDate value="${user.date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td>
                   <a class="summary"  onmouseover="showDetail(true,this);" onmouseout="showDetail(false,this);">${user.rol}</a>
                    <!--浮动的详细信息-->
                  <div class="detail_info">
                                    超级管理员
                      </div>
                            </td>
				<td class="td_modi">
                  <input type="button" value="修改" class="btn_modify" onclick="location.href='${initParam.root}query.action?id=${user.id }'"/>
                  <input type="button" value="删除" class="btn_delete" onclick="location.href='${initParam.root}delete.action?id=${user.id }'"/>
                </td>
			</tr>
		</c:forEach>
		
	</table>

			</div>
			<!--分页-->
			<div id="pages">
				<a href="#">上一页</a> <a href="#" class="current_page">1</a> <a
					href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
				<a href="#">下一页</a>
			</div>
		</form>
	</div>
	<!--主要区域结束-->
	<div id="footer"></div>
</body>
</html>