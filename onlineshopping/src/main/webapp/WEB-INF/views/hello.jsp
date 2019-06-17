<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "spring" uri = "http://www.springframework.org/tags" %>

<spring:url var = "css" value = "/recourses/css"/>
<spring:url var = "js" value = "/recourses/js"/>
<spring:url var = "images" value = "/recourses/images"/>

<c:set var = "contextRoot" value ="${pageContext.request.contextPath }"/>


<!doctype html>

<html lang="en">

<body>
  <div>
			<%@include file = "./sidebar.jsp" %>
  </div>
</body>
</html>