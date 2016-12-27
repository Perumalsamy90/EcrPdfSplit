<%--
  User: Perumalsamy
  Date: 10/25/2016
  Time: 10:10 AM
  --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Perumalsamy">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>ECR Information</title>
    <!-- Bootstrap CSS -->
    <%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>    
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <style type="text/css">
        .myrow-container{
            margin: 20px;
        }
    </style>
</head>
<body class=".container-fluid">
    <div class="container myrow-container">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">
                    ECR Details
                </h3>
            </div>
            <div class="panel-body">
                <form:form id="employeeRegisterForm" cssClass="form-horizontal" modelAttribute="ecrModel" method="post" action="saveFile">
    
                    <div class="form-group">
                        <div class="control-label col-xs-3"> <form:label path="branch" >Branch</form:label> </div>
                        <div class="col-xs-3">
                           
                            <form:select cssClass="form-control" path="branch" >
                            		<form:option value="" label="--Select Branch--"/>
                            		<form:option value="AHMEDABAD" label="Ahmedabad"/>
                            		<form:option value="BENGALOORU" label="Bangalore"/>
                            		<form:option value="CHENNAI" label="Chennai"/>
                            		<form:option value="COCHIN" label="Kochi"/>
                            		<form:option value="DELHI" label="Delhi"/>
                            		<form:option value="HYDERABAD" label="Hyderabad"/>
                            		<form:option value="KOLKATA" label="Kolkata"/>
                            		<form:option value="MUMBAI" label="Mumbai"/>
                            		<form:option value="PUDUCHERRY" label="Puducherry"/>
                            		<form:option value="PUNE" label="Pune"/>
                            		<form:option value="TAMILNADU" label="Tamilnadu"/>
                            </form:select>
                        </div>
                    </div>
    
                    <div class="form-group">
                        <form:label path="month" cssClass="control-label col-xs-3">Month</form:label>
                        <div class="col-xs-3">
                            <form:select cssClass="form-control" path="month" >
                            		<form:option value="" label="--Select Month--"/>
                            		<form:option value="JANUARY" label="January"/>
                            		<form:option value="FEBRUARY" label="February"/>
                            		<form:option value="MARCH" label="March"/>
                            		<form:option value="APRIL" label="April"/>
                            		<form:option value="MAY" label="May"/>
                            		<form:option value="JUNE" label="June"/>
                            		<form:option value="JULY" label="July"/>
                            		<form:option value="AUGUST" label="August"/>
                            		<form:option value="SEPTEMBER" label="September"/>
                            		<form:option value="OCTOBER" label="October"/>
                            		<form:option value="NOVEMBER" label="November"/>
                            		<form:option value="DECEMBER" label="December"/>
                            </form:select>
                        </div>
                    </div>
    
                    <div class="form-group">
                        <div class="control-label col-xs-3"><form:label path="year">Year</form:label></div>
                        <div class="col-xs-3">
                            <form:select cssClass="form-control" path="year" >
                            		
                            		<form:option value="2016" label="2016"/>
                            		<form:option value="2015" label="2015"/>
                            		<form:option value="2014" label="2014"/>
                            		<form:option value="2013" label="2013"/>
                            		<form:option value="2012" label="2012"/>
                            		<form:option value="2011" label="2011"/>
                            </form:select>
                        </div>
                    </div>
    
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-3">
                            </div>
                            <div class="col-xs-1">
                                <input type="submit" id="saveFile" class="btn btn-primary" value="Generate Pdf Document" onclick="return submitEmployeeForm();"/>
                            </div>
                            
                            <div class="col-xs-1">
                            </div>
                             <div class="col-xs-4">
                                <input type="submit" id="saveFile" class="btn btn-primary" value="Generate Excel Document" onclick="return submitEmployeeForm();"/>
                            </div>
                            <div class="col-xs-4">
                            </div>
                        </div>
                    </div>
    
                </form:form>
            </div>
        </div>
    </div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
		function submitEmployeeForm() {				
			
		    // getting the employee form values
		    var branch = $('#branch').val().trim();
		    var month = $('#month').val();
		    var year = $('#year').val();
		    if(branch.length ==0) {
		        alert('Please select a branch');
		        $('#branch').focus();
		        return false;
		    }
	
		    if(month <= 0) {
		        alert('Please select a month');
		        $('#month').focus();
		        return false;
		    }
	
		    if(year <= 0) {
		        alert('Please enter year');
		        $('#year').focus();
		        return false;
		    }
		    return true;
		};	
	</script>

</body>
</html>