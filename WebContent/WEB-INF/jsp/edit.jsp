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
    
    <h1>学生修改页面</h1>
    
    <form:form  action="${ctp}/emp/${student.stuNo }"  modelAttribute="student" method="POST">
    <input type="hidden" name="_method" value="put"/>   <!-- 我们需要提交的方式 post->put -->
     <input type="hidden" name="stuno" value="${student.stuNo}"/>
       stuName:<form:input path="stuName"/><br/>
        stuage:<form:input path="stuAge"/><br/>
        graname:<form:input path="graName"/><br/>
        <input type="submit"  value="修改">
    </form:form>
</body>
</html>