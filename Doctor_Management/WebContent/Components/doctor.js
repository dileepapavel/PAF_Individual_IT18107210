$(document).ready(function() {
    if ($("#alertSuccess").text().trim() == "") 
    {
        $("#alertSuccess").hide();
    }
    $("#alertError").hide();
});
// SAVE ============================================
$(document).on("click", "#btnSave", function(event) 
{
    // Clear alerts---------------------
    $("#alertSuccess").text("");
    $("#alertSuccess").hide();
    $("#alertError").text("");
    $("#alertError").hide();
    // Form validation-------------------
    var status = validateDoctorForm();
    if (status != true) 
    {
        $("#alertError").text(status);
        $("#alertError").show();
        return;
    }
    // If valid------------------------
    var type = ($("#hidDoctorIDSave").val() == "") ? "POST" : "PUT";
    $.ajax(
    	{
    		url : "DoctorAPI",
    		type : type,
    		data : $("#formDoctor").serialize(),
    		dataType : "text",
    		complete : function(response, status)
    		{
    		onDoctorSaveComplete(response.responseText, status);
    		}
    	});
});

function onDoctorSaveComplete(response, status)
{
	if(status == "success" ){
		var resultSet =JSON.parse(response);
		
		if (resultSet.status.trim() == "success")
			{
				$("#alertSuccess").text("Successfully saved.");
				$("#alertSuccess").show();
				
				$("#divDoctorGrid").html(resultSet.data);
			}else if (resultSet.status.trim() == "error")
			{
				$("#alertError").text(resultSet.data);
				$("#alertError").show();
			}
	}else if (status == "error")
			{
				$("#alertError").text("Error while saving.");
				$("#alertError").show();
			} else
			{
				$("#alertError").text("Unknown error while saving..");
				$("#alertError").show();
			}
		$("#hidDoctorIDSave").val("");
		$("#formDoctor")[0].reset();
		
}
// UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event) {
    $("#hidDoctorIDSave").val($(this).closest("tr").find('#hidDoctorIDUpdate').val());
    $("#name").val($(this).closest("tr").find('td:eq(0)').text());
    $("#age").val($(this).closest("tr").find('td:eq(1)').text());
    $("#mail").val($(this).closest("tr").find('td:eq(2)').text());
    $("#speciality").val($(this).closest("tr").find('td:eq(3)').text());
    $("#MediRegNo").val($(this).closest("tr").find('td:eq(4)').text());
    $("#workedHospital").val($(this).closest("tr").find('td:eq(5)').text());
});
// CLIENTMODEL=========================================================================
function validateDoctorForm() {

    if ($("#name").val().trim() == "") {
        return "Insert doctor name.";
    }

    if ($("#age").val().trim() == "") {
        return "Insert doctor age.";
    }

    if ($("#mail").val().trim() == "") {
        return "Insert doctor mail.";
    }

    if ($("#speciality").val().trim() == "") {
        return "Insert doctor speciality.";
    }

    if ($("#MediRegNo").val().trim() == "") {
        return "Insert doctor medical registration number.";
    }
    
    if ($("#workedHospital").val().trim() == "") {
        return "Insert doctor worked hospital.";
    }
    
    return true;
}