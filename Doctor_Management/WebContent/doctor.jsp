<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.Doctor" %>  
<% 
	//Initialize--------------------------
	session.setAttribute("statusMsg","");
	System.out.println("Trying to process...");

	//Save------------------------------------
   if (request.getParameter("name") != null) {
	Doctor Doctor_1 = new Doctor();
    String
    stsMsg = "";
    
    //Insert--------------------------
    if (request.getParameter("hidDoctorIDSave") == "") {
        stsMsg = Doctor_1.insertDoctor(request.getParameter("name"),
                request.getParameter("age"), request
                        .getParameter("mail"), request
                        .getParameter("speciality"), request
                        .getParameter("MediRegNo"), request
                        .getParameter("workedHospital"));
    } else//Update----------------------
    {
        stsMsg = Doctor_1.updateDoctor(request.getParameter("hidDoctorIDSave"),
                        request.getParameter("name"), request
                                .getParameter("age"), request
                                .getParameter("mail"), request
                                .getParameter("speciality"), request
                                .getParameter("MediRegNo"), request
                                .getParameter("workedHospital"));
    }
    session.setAttribute("statusMsg", stsMsg);
   }
   //Delete--------------------------------
   if (request.getParameter("hidDoctorIDDelete") != null) {
	Doctor
	Doctor_1 = new Doctor();
    String stsMsg = Doctor_1.deleteDoctor(request.getParameter("hidDoctorIDDelete"));
    session.setAttribute("statusMsg", stsMsg);
   }
   %>    	 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Health Care Management</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="./Components/doctor.js"></script>
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
		
		<form class="formDoctor" name="formDoctor" method="post" action="doctor.jsp">
				<div class="form-group">
				
					<label for="name">Doctor Name:</label>
					<input type="text" class="form-control"  id="name" placeholder="Enter your name" name="name"><br>
					
					<label for="age">Doctor Age:</label>
					<input type="text" class="form-control"  id="age" placeholder="Enter your age" name="age"><br>
					
					<label for="mail">Mail:</label>
					<input type="text" class="form-control" id="mail" placeholder="Enter your mail" name="mail"><br>
					
					<label for="speciality">Speciality:</label>
					<input type="text" class="form-control" id="speciality" placeholder="Enter your speciality" name="speciality"><br>
					
					<label for="MediRegNo">Medical Registration Number:</label>
					<input type="text" class="form-control" id="MediRegNo" placeholder="Enter your medical registration number " name="MediRegNo"><br>
								
					<label for="workedHospital">Hospitals that you have worked:</label>
					<input type="text" class="form-control" id="workedHospital" placeholder="Enter your hospitals that you have worked" name="workedHospital"><br>
								
					<input id="btnSave" name="btnSave" type="submit" value="Save"
			        class="btn btn-primary"> 
					<input type="hidden" id="hidDoctorIDSave" name="hidDoctorIDSave" value="">					
				</div>
			</form>
			<div id="alertSuccess" class="alert alert-success">
		            <%
			          out.print(session.getAttribute("statusMsg"));
	             	%>
	        </div>
	        <div id="alertError" class="alert alert-danger"></div>
	        <br>
	        	<%
	                Doctor doctorObj = new Doctor();
	                out.print(doctorObj.readDoctor());
             	%>
	       </div>  
	       </div>
	       </div>
				   
</body>
</html>


