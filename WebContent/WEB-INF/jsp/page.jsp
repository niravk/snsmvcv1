<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>

<spring:url var="css" value="/resources/css"/>
<spring:url var="js" value="/resources/js"/>
<spring:url var="images" value="/resources/images"/>
<spring:url var="popper" value="/resources/popper"/>

<html>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SNS IT Services - ${title}</title>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}/full.css" rel="stylesheet">

  </head>

  <body>
  
    <!-- Navigation bar  -->
	<%@include file="./shared/navbar.jsp" %>
     
     
    <!-- Page Content (Home page content loads here)-->
    
    <!-- Loads only when Home is clicked  -->
    <c:if test="${userClickHome == true}">
		<%@include file="home.jsp" %>
	</c:if>

	<!-- Loads only when About us is clicked  -->
    <c:if test="${userClickAbout == true}">
		<%@include file="about.jsp" %>
	</c:if>
	
	<!-- Loads only when contact is clicked  -->
    <c:if test="${userClickContact == true}">
		<%@include file="home.jsp" %>
	</c:if>
	
	<!-- Loads only when Service is clicked  -->
    <c:if test="${userClickService == true}">
		<%@include file="home.jsp" %>
	</c:if>
	
	
	

	<!-- footer goes here -->
	<%@include file="./shared/footer.jsp" %>
	
	
    <!-- Bootstrap core JavaScript -->
    <script src="${js}/jquery.min.js"></script>
    <script src="${popper}/popper.min.js"></script>
    <script src="${js}/bootstrap.min.js"></script>

</body>
</html>