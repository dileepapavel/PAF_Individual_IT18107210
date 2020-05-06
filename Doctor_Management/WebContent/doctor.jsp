<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.Doctor" %>  
  	 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Health Care Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery.min.js"></script>
<script src="Components/doctor.js"></script>
  <style>
body {
  background-color: lightblue;
  margin: 20px;
  padding: 20px;
}
divDoctorGrid.{
	padding: 20px;
	text-align:center;
	border-spacing: 5px;
}
</style>
</head>
<body >
<nav class ="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><h1><b>Health Care System</b></h1></a>
	<div class="navbar-header navbar-right">
		<ul class="nav navbar-nav">
			<li><a href="#"><b>Home</b></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="#"><b>Doctor</b></a></li>
		</ul>
	</div>
	</div>
</nav>
	<div class="form-group">
	<div class="">
	<div class="col-6">
		
		<h4>Doctor Register Details</h4>
		
			<form id="formDoctor" name="formDoctor">
					Doctor Name:
					<input type="text" class="form-control form-control-sm"  id="doctorName" placeholder="Enter your name" name="doctorName"><br>
					
					Doctor Age:
					<input type="text" class="form-control form-control-sm"  id="doctorAge" placeholder="Enter your age" name="doctorAge"><br>
					
					Mail:
					<input type="text" class="form-control form-control-sm" id="doctorMail" placeholder="Enter your mail" name="doctorMail"><br>
					
					Speciality:
					<input type="text" class="form-control form-control-sm" id="doctorSpeciality" placeholder="Enter your speciality" name="doctorSpeciality"><br>
					
					Medical Registration Number:
					<input type="text" class="form-control form-control-sm" id="MediRegNo" placeholder="Enter your medical registration number " name="MediRegNo"><br>
								
					Hospitals that you have worked:
					<input type="text" class="form-control form-control-sm" id="workedHospital" placeholder="Enter your hospitals that you have worked" name="workedHospital"><br>
								
					<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary"> 
					<input type="hidden" id="hidDoctorIDSave" name="hidDoctorIDSave" value="">					
			</form>
				<div id="alertSuccess" class="alert alert-success"></div>
	        	<div id="alertError" class="alert alert-danger"></div>
	        <br>
	        
	        	
	       </div>  
	       </div>
	       </div>
				   
</body>
				<div id="divDoctorGrid">
	        	<%
	                Doctor doctorObj = new Doctor();
	                out.print(doctorObj.readDoctor());
             	%>
             	</div>
</html>


