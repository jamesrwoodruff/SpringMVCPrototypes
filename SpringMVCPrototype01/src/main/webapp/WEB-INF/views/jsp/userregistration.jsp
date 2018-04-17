<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ include file="../jsp/fragments/taglib.jsp" %>

<!DOCTYPE html>
<html class="no-js" lang="en-US">

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
<spring:url value="/resources/core/css/base.css" var="baseCss" />
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<spring:url value="/resources/core/js/modernizr.js" var="modernizrJs" />
<spring:url value="/resources/core/js/hello.js" var="helloJs" />
<spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" />
<script src="${modernizrJs}"></script>
<script src="${helloJs}"></script>
<script src="${bootstrapJs}"></script>

<!-- Begin site-specific CSS files -->
<!-- End site-specific CSS files -->
</head>

<body>

	<nav class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Spring MVC Prototype 01</a>
			</div>
		</div>
	</nav>

	<div>

		<header>
			<!-- <p>some header here</p> -->
		</header>

		<div id="tdr_content_content" style="min-height: 600px;">

			<form:form commandName="user" cssClass="form-horizontal"
				action="usersuccess">
				<div class="form-group">
					<label for="userid" class="col-sm-2 control-label">UserId</label>
					<div class="col-sm-2">
						<form:input path="userid" cssClass="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label for="firstname" class="col-sm-2 control-label">First Name</label>
					<div class="col-sm-2">
						<form:input path="firstname" cssClass="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label for="middlename" class="col-sm-2 control-label">Middle Name</label>
					<div class="col-sm-2">
						<form:input path="middlename" cssClass="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label for="lastname" class="col-sm-2 control-label">Last Name</label>
					<div class="col-sm-2">
						<form:input path="lastname" cssClass="form-control" />
					</div>
				</div>
				<div class="form-group">
					<label for="none" class="col-sm-2 control-label"></label>
					<div class="col-sm-2">
						<button type="submit" class="btn btn-default">Submit</button>
					</div>
				</div>
			</form:form>
		</div>

		<footer id="tdr_footer">
			<!-- <p>some footer here</p> -->
		</footer>

		<nav id="tdr_side_nav" class="navbar nav-offcanvas" role="navigation">
			<div class="tdr_search clearfix"></div>
		</nav>
	</div>
</body>
</html>