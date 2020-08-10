<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	   pageContext.setAttribute("ctp",request.getContextPath());
	 %>
<body>

<form action="${pageContext.request.contextPath}/customer/save.action" method="post">
  	客户姓名：<input type="text" name="name"/><br/>
  	客户性别：
  	<input type="radio" name="gender" value="men"/>男
  	<input type="radio" name="gender" value="women"/>女
  	<br/>
  	客户手机：<input type="text" name="telephone"/><br/>
  	客户住址：<input type="text" name="address"/><br/>
  	<input type="submit" value="保存">
  </form>
</body>
</html>