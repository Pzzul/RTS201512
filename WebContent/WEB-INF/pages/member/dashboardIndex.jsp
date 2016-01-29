<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User DashBoard</title>

    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/newSource/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/newSource/css/user-dashboard.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resource/components/font-awesome-4.5.0/css/font-awesome.min.css" />">

	<script type="text/javascript" src="<c:url value="/resource/newSource/js/jquery-1.10.2.min.js"/>"></script>   
    <script type="text/javascript" src="<c:url value="/resource/newSource/bootstrap/js/bootstrap.min.js"/>"></script>
    
	<script type="text/javascript" src="<c:url value="/resource/components/angular/angular.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resource/components/angular/angular-route.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resource/components/js/userDashControllers.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resource/components/js/userDashApp.js"/>"></script>
</head>
<body ng-app="dashApp">
	<nav class="navbar navbar-default navbar-static-top">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="<c:url value="/main"/>"><i class="fa fa-train"></i>RTS</a>
	    </div>
	    
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav navbar-right">
	        <li class="dropdown">
	          <button class="dropdown-toggle btn navbar-btn" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Hello, User!<span class="caret"></span></button>
	          <ul class="dropdown-menu">
	            <li><a href="<c:url value="#/profile"/>">View Profile</a></li>
	            <li><a href="<c:url value="#/orders"/>">Your Orders</a></li>
	            <li><a href="#">Payment Method</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="#">Sign Out</a></li>
	          </ul>
	        </li>
	        <li><a href="#">Cart(0)</a></li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	
	<div ng-view></div>
</body>