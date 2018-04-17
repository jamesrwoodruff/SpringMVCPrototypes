<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%> --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>

<%@ page contentType="text/html; charset=ISO-8859-1" %>

<%-- <%@ include file="../fragments/taglib.jsp" %> --%>

<html class="no-js" lang="en-US">

<head>
		<%-- <jsp:include page="/WEB-INF/views/fragments/main/head-main.jsp" /> --%>

    <style type="text/css">
        #fieldset-form { 
            display: table-cell;
            border-style: solid;
            border-width: 1px;
            border-color: #ccc; 
        }
        #h1-form {
            text-transform: capitalize;
        }
    </style>
    
    <meta charset="utf-8">
		<title>jQuery UI Accordion - Default functionality</title>
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  	<link rel="stylesheet" href="/resources/demos/style.css">
    <script>
  	$(function() {
    	$( "#accordion" ).accordion();
  	});
  	</script>
</head>

<body>

	<!-- <div id="tdr_wrapper"> -->
	<div>

		<!-- <div id="tdr_slide_wrapper"> -->
		<div>

		<header>
		<!-- form title -->
      	<%-- <jsp:include page="/WEB-INF/views/fragments/socialidentitiesadmin/title-socialidentitiesadmin.jsp" /> --%>
        <!-- main menu -->
        <%-- <jsp:include page="/WEB-INF/views/fragments/main/menu-main.jsp" /> --%>
    	</header>
    	
    	<!-- added this next line, copying elections app approach -->
    	<div id="tdr_banner" style="display: block"></div>
    	
    	<!-- <main role="main" id="tdr_content"> -->

    	<div id="tdr_content_content" style="min-height: 600px;">
    	
				<form:form commandName="socialidentity" cssClass="form-horizontal" action="socialidentitiesadminsuccess">
					<div class="form-group">
						<label for="pid" class="col-sm-2 control-label">PID</label>
						<div class="col-sm-2">
							<form:input path="pid" cssClass="form-control" disabled="true"/>
						</div>
					</div>
					<div class="form-group">
						<label for="sexbir" class="col-sm-2 control-label">Sexbir</label>
						<div class="col-sm-2">
							<form:input path="sexbir" cssClass="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for="gendid" class="col-sm-2 control-label">Gendid</label>
						<div class="col-sm-2">
							<form:input path="gendid" cssClass="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for="sexort" class="col-sm-2 control-label">Sexort</label>
						<div class="col-sm-2">
							<form:input path="sexort" cssClass="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for="sexortother" class="col-sm-2 control-label">Sexort Other</label>
						<div class="col-sm-2">
							<form:input path="sexortother" cssClass="form-control" />
						</div>
					</div>
					<div class="form-group">
						<label for="something2" class="col-sm-2 control-label"></label>
						<div class="col-sm-3">
							<!-- <input type="submit" name="submit" class="btn btn-lg btn-primary" /> -->
							<input type="submit" name="submit" value="Submit These Changes" class="btn btn-lg btn-primary" />
						</div>
					</div>
					<div class="form-group">
						<label for="something1" class="col-sm-2 control-label"></label>
						<div class="col-sm-3">
							<p><a href="/genderidprototype/socialidentitiesadminsearch"><small>&#171; Return to Search another PID</small></a></p>
						</div>
					</div>
				</form:form>

			</div>
			<!-- </main> -->
			
			<footer id="tdr_footer">
      	<%-- <jsp:include page="/WEB-INF/views/fragments/main/footer-main.jsp" /> --%>
      </footer>
			</div>
			<nav id="tdr_side_nav" class="navbar nav-offcanvas" role="navigation">
      	<div class="tdr_search clearfix"></div>
      </nav>
	</div>
</body>
</html>