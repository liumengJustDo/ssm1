<%@ page language="java"  import="cn.lm1234.controller.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <!-- int num=StudentController.StuNumber();
    int n=num/3;-->
<%
	   pageContext.setAttribute("ctp",request.getContextPath());
   
	 %>
</head>
<body>
<h1>员工列表</h1>
	<table border="1" cellpadding="5" cellspacing="0">
		<tr>
			<th>stuNo</th>
			<th>stuName</th>
			<th>stuAge</th>
			<th>graName</th>
			<th>Edit</th>
			<th>delete</th>
		</tr>


		<c:forEach items="${emps}" var="emp">
		<tr>
			<td>${emp.stuNo }</td>
			<td>${emp.stuName}</td>
			<td>${emp.stuAge }</td>
			<td>${emp.graName }</td>			
			<td>
			<a href="${ctp}/emp/${emp.stuNo }">Edit</a>
			</td>
			<td>
			<form action="${ctp}/emps/${emp.stuNo }"  method="POST">
			<input type="hidden" name="_method" value="DELETE"/> <br/>
	         <input type="submit" value="删除"/><br/> 
			</form>
			</td>
		</tr>
	</c:forEach>
	</table>
	<a href="${ctp }/toaddpage">添加员工</a><br/>
	
	<%	 
	for( int i =1;i<=10;i++ )
	{
		%>
<a href="${ctp}/input/<%=i%>"><%=i %></a>

<% } %>
</body>
</html>