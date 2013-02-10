<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%> 

<html>
    <head>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
        <link rel="icon" href="<spring:theme code="site.logo" />" type="image/x-icon">
        <title>Spring MVC Themes Using LESS CSS - By Suryaknad Shinde</title>
        <meta name="robots" content="all">
        <tiles:insertAttribute name="staticincludes" />
    </head>
    <body id="${pageName}">
    	<div class="navbar navbar-fixed-top">
    		<div id="pageHeader-${pageName}" class="navbar-inner">
	    		<div id="container-${pageName}" class="container">
		        	<div class="container">
						 <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
						   <span class="icon-bar"></span>
						   <span class="icon-bar"></span>
						   <span class="icon-bar"></span>
						 </a>		        	
		            	<tiles:insertAttribute name="header" />
		            </div>
		        </div>
	        </div>
	   </div>
	   <div class="container jj-well-white">
	       <div id="bodyContent" class="bodyContent">
	          <tiles:insertAttribute name="body" />
	       </div>
	       <footer class="footer">
		        <tiles:insertAttribute name="footer" />
			</footer>
		</div>
    </body>
</html>