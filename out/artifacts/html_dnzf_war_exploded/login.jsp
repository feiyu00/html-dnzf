<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		<link type="text/css" rel="stylesheet" media="all" href="styles/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="styles/global_color.css" /> 
</head>
<body class="index">
        <div class="login_box">
        	<form action="${initParam.root}checkUsers.action" method="post">
            <table>
                <tr>
                    <td class="login_info">账号：</td>
                    <td colspan="2"><input name="uname" type="text" class="width150" /></td>
                    <td class="login_error_info"><span class="required"></span></td>
                </tr>
                <tr>
                    <td class="login_info">密码：</td>
                    <td colspan="2"><input name="upass" type="password" class="width150" /></td>
                    <td><span class="required"></span></td>
                </tr>
                <tr>
                    <td class="login_info">验证码：</td>
                    <td class="width70"><input name="" type="text" class="width70" /></td>
                    <td><img src="images/valicode.jpg" alt="验证码" title="点击更换" /></td>  
                    <td><span class="required"></span></td>              
                </tr>            
                <tr>
                    <td></td>
                    <td class="login_button" colspan="2">
                    <input type="image" src="${initParam.root}/images/login_btn.png" 
                    onclick="submit()" style="border:none;height: 40px;width: 100px"/>
                    </td>    
                    <td><span class="required">${msg}</span></td>                
                </tr>
            </table>
            </form>
        </div>
    </body>
</html>
