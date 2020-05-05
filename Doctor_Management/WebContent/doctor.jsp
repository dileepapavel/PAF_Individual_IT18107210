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
  background-color: #E6E6FA;
}
</style>
</head>
<body >
<h1 style="font-family:verdana">Health Care Management</h1><br><br>
	<div class="container">
	<div class="row">
	<div class="col-6">
		
		<h2>Doctor Register Details</h2><br><br>
		
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
	        	<div id="DoctorGrid">
	        	<%
	                Doctor doctorObj = new Doctor();
	                out.print(doctorObj.readDoctor());
             	%>
             	</div>
	       </div>  
	       </div>
	       </div>
				   
</body>
</html>


