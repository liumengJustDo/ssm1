<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
      pageContext.setAttribute("ctp", request.getContextPath());
    %>
<form:form action="${ctp}/emp "  modelAttribute="student" method="POST">
       <!--path:就是原来html-input的name项 : 需要写  
          path:
          1) 当作原生的name项
          2）自动回显隐含模型中某个对象对应这个属性的值
       -->
      lastName:<form:input path="stuName"/><br/>
      stuAge:<form:input path="stuAge"/><br/>
      graName:<form:input path="graName"/><br/>
      <input type="submit" value="提交">
</form:form>
</body>
</html>