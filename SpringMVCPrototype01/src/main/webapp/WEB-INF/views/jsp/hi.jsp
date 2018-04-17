<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>SpringMVCPrototype01</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<meta name="robots" content="index,follow,noarchive">
<meta name="ORGANIZATION" content="ORGANIZATION NAME HERE">
<meta name="SITE" content="SITE NAME HERE">
<meta name="PAGETITLE" content="INSERT TITLE HERE">
<meta name="DESCRIPTION" content="INSERT DESCRIPTION HERE">

<!-- Spring URL Tags: http://docs.spring.io/spring/docs/3.0.x/spring-framework-reference/html/spring.tld.html#spring.tld.url -->
<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<spring:url value="/resources/core/js/hello.js" var="coreJs" />
<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" />
<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
	<div class="navbar-header">
		<a class="navbar-brand" href="#">Spring MVC Prototype 01</a>
	</div>
  </div>
</nav>
 
<!-- Using bootstrap, so available elements include jumbotron. --> 
<div class="jumbotron">
  <div class="container">
	<h1>Title</h1>
	<p>Hi!</p>
    <p>
		<a class="btn btn-primary btn-lg" href="register" role="button">Register</a>
	</p>
	</div>
</div>
 
</body>
</html>