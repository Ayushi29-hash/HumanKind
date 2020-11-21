<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="container">

	<h2>Ambulance Register Form</h2>
	<div class="col-md-6 col-md-offset-3">
			<div class="alert alert-success center" role="alert">
				<p>${NOTIFICATION}</p>
			</div>
			
		<form action="<%=request.getContextPath()%>/register" method="post">

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
						<label for="uname">Phone Number:</label> <input type="text"
							class="form-control" id="phoneno" placeholder="Phone Number"
							name="phoneno" required>
					</div>

					
				
					<div class="form-group">
						<label>Date of Birth:</label> <input type="date"
						value="<c:out value='${users.dob}' />"class="form-control" id="dob" placeholder="Date of Birth"
							name="dob" required>
					</div>
					
					<div class="form-group">
						<label for="uname">Aadhar Number:</label> <input type="text"
							class="form-control" id="aadharno" placeholder="Aadhar Number"
							name="aadharno" required>
					</div>
					
					<div class="form-group">
						<label for="uname">DL Number:</label> <input type="text"
							class="form-control" id="dlno" placeholder="DL Number"
							name="dlno" required>
					</div>
					
					<div class="form-group">
						<label for="uname">Vehicle Number:</label> <input type="text"
							class="form-control" id="vehicleno" placeholder="Vehicle Number"
							name="vehicleno" required>
					</div>
					
					<!--  <div class="form-group">
						<label for="uname">Vehicle Type:</label> <input type="text"
							class="form-control" id="vehicletype" placeholder="Vehicle Type"
							name="vehicletype" required>-->
							
					<div class="form-group">
   						 <label for="exampleFormControlSelect1">Vehicle type</label>
   						 <select class="form-control" id="vehicletype" name="vehicletype" required>
     					 <option>AC</option>
     					 <option>Non AC</option>
    				  	 <option>ICU</option>
     					 <option>Collective</option>
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