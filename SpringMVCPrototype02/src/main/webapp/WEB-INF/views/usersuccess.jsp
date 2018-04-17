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
    	
Thanks for registering!<br>
Back to the <a href="${pageContext.request.contextPath}/" >main</a> page.<br>
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