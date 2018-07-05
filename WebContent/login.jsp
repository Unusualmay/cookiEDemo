<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.*,java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
		String username="";
		String password="";
		//获得cookie
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length > 0) {
			for (Cookie c:cookies) {
				if (c.getName().equals("username")) {
					username=URLDecoder.decode(c.getValue(),"utf-8");
				}
				if (c.getName().equals("password")) {
					password=URLDecoder.decode(c.getValue(),"utf-8");
				}
			}
		}
	%>
	<div id ="container">
		<div class="logo">
			<a href="#"></a>
		</div>
		<div id="n=box">
			<form action="dologin.jsp" method="post">
				<p class="main">
					<label>用户名：</label>
					<input name="username" value="<%=username %>"/>
					<label>密码：</label>
					<input type="password" name="password" value="<%=password %>"/>
				</p>
				<tr>
					<td colspan="2"><input type="checkbox" name="isUseCookie" checked="checked"/>十天内记住我的登录状态</td>
				</tr>
				<p class="space">
					<input type="submit" value="登录"/>
					<input type="reset" value="取消"/>
				</p>
			</form>
		</div>
	</div>
</body>
</html>