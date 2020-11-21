<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donor Registration</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="container">

	<h2>Blood Donor Register Form</h2>
	<div class="col-md-6 col-md-offset-3">
			<div class="alert alert-success center" role="alert">
				<p>${NOTIFICATION}</p>
			</div>
			
		<form action="<%=request.getContextPath()%>/donor" method="post">

					<div class="form-group">
						<label for="uname">First Name:</label> <input type="text"
							class="form-control" id="uname" placeholder="First Name"
							name="firstName" required>
					</div>

					<div class="form-group">
						<label for="uname">Last Name:</label> <input type="text"
							class="form-control" id="lastname" placeholder="last Name"
							name="lastName" required>
					</div>
					
					<div class="form-group">
   						 <label for="exampleFormControlSelect1">Gender</label>
   						 <select class="form-control" id="gender" name="gender" required>
     					 <option> </option>
     					 <option>Male</option>
     					 <option>Female</option>     					 
   						 </select>
                    </div>	
					
					<div class="form-group">
						<label for="uname">Age:</label> <input type="text"
							class="form-control" id="age" placeholder="Age"
							name="age" required>
					</div>
					
					<div class="form-group">
						<label>Date of Birth:</label> <input type="date"
						value="<c:out value='${donor.dob}' />"class="form-control" id="dob" placeholder="Date of Birth"
							name="dob" required>
					</div>
					
					<div class="form-group">
   						 <label for="exampleFormControlSelect1">Blood Group</label>
   						 <select class="form-control" id="bloodgrp" name="bloodgrp" required>
     					 <option> </option>
     					 <option>A+</option>
     					 <option>A-</option>
    				  	 <option>B+</option>
     					 <option>B-</option>
     					 <option>AB+</option>
     					 <option>AB-</option>
     					 <option>O+</option>
     					 <option>O-</option>
   						 </select>
                    </div>	

					<div class="form-group">
						<label for="uname">Phone Number:</label> <input type="text"
							class="form-control" id="phoneno" placeholder="Phone Number"
							name="phoneno" required>
					</div>
	
					
					
					<div class="form-group">
						<label for="uname">State:</label> <input type="text"
							class="form-control" id="state" placeholder="State"
							name="state" required>
					</div>
					
					<div class="form-group">
						<label for="uname">City:</label> <input type="text"
							class="form-control" id="city" placeholder="City"
							name="city" required>
					</div>
					
					<div class="form-group">
   						 <label for="exampleFormControlSelect1">Are you suffering from HIV/AIDS ?</label>
   						 <select class="form-control" id="aids" name="aids" required>
     					 <option> </option>
     					 <option>Yes</option>
     					 <option>No</option>
    				  	 
   						 </select>
                    </div>	
					
					<!--  <div class="form-group">
						<label for="uname">Vehicle Type:</label> <input type="text"
							class="form-control" id="vehicletype" placeholder="Vehicle Type"
							name="vehicletype" required>-->
							
					<div class="form-group">
   						 <label for="exampleFormControlSelect1">Are you suffering from Leukemia ?</label>
   						 <select class="form-control" id="cancer" name="cancer" required>
     					 <option> </option>
     					 <option>Yes</option>
     					 <option>No</option>
    				  	 
   						 </select>
                    </div>	
                    
                    <div class="form-group">
   						 <label for="exampleFormControlSelect1">Have you pierced ear/body ?</label>
   						 <select class="form-control" id="pierce" name="pierce" required>
     					 <option> </option>
     					 <option>Yes</option>
     					 <option>No</option>
    				  	 
   						 </select>
                    </div>		
 
			
                         <button type="submit" class="btn btn-primary">Submit</button>
					     <!--  <button type="submit" class="btn btn-primary">Submit</button>-->

				</form>
			</div>
		</div>
		<!-- </div> -->
		<br>
		<br>
		
	<jsp:include page="../common/footer.jsp"></jsp:include>
	

	
</body>
</html>