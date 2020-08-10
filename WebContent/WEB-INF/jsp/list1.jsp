<%@ page language="java"   import="cn.lm1234.test.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	pageContext.setAttribute("ctp", request.getContextPath());
    int  n=MyBatisSpringTest.test1();
%>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入 Bootstrap -->
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div class="container">

		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="page-header">
					<h1>
						<small>学生列表 —— 显示所有学生</small>
					</h1>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 column">
				<a class="btn btn-primary" href="${ctp }/toaddpage">添加学生</a>
			</div>
		</div>

		<div class="row clearfix">
			<div class="col-md-12 column">
				<table class="table table-hover table-striped">
					<thead>
						<tr>
							<th>stuNo</th>
							<th>stuName</th>
							<th>stuAge</th>
							<th>graName</th>
							<th>Edit</th>
							<th>delete</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach items="${emps}" var="emp">
							<tr>
								<td>${emp.stuNo }</td>
								<td>${emp.stuName}</td>
								<td>${emp.stuAge }</td>
								<td>${emp.graName }</td>
								<td>
									<form action="${ctp}/emps/${emp.stuNo }">
										<input type="submit" value="修改" /><br />
									</form>
								</td>
								<td>
									<form action="${ctp}/emps/${emp.stuNo }" method="post">
										<input type="submit" value="删除" /><br />
									</form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	  var n=${num};
	  var html="";
	  window.onload=function f(){
	  for(var i=1;i<=(n/4)+1;i++)
		  {		 
			html+= "<a href='${ctp}/input/" +i+">'"
          +i+
          "</a>"
          
			}	  	 //没有实现出来 ，选择了用Spring调用 
	  }
	  
	</script>
	<div class="row" align="right">
			<div class="col-sm-4 column">
	<% for (int i = 1; i <=(n/4)+1; i++) 
		{ %>
		<a class="btn btn-primary" href="${ctp}/input/<%=i%>"><%=i%></a>
<!-- <a href="${ctp}/input/<%=i%>"><%=i%></a>    -->	 
	<%}%>	
	</div>
		</div>
 

</body>
</html>