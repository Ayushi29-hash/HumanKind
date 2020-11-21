<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Donate Blood</title>
    <style>
		body {
		  background-image: url('https://images.unsplash.com/photo-1543362906-acfc16c67564?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGhlYWx0aHxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=60');
		  background-repeat: no-repeat;
		  background-attachment: fixed;
		  background-size: cover;
		}
		</style>
  </head>
<body>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">HumanKind</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="<%= request.getContextPath() %>/register">Register
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="<%= request.getContextPath() %>/avail">Avail</a></li>
				<li class="nav-item"><a class="nav-link" href="<%= request.getContextPath() %>/donor">Donor</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown1"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Ambulance </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="<%= request.getContextPath() %>/register">Register</a> <a
							class="dropdown-item" href="<%= request.getContextPath() %>/avail">Book</a>
						
					</div></li>
					<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown2"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Blood </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="<%= request.getContextPath() %>/donor">Donor</a> <a
							class="dropdown-item" href="<%= request.getContextPath() %>/avail">Book</a>
						
					</div></li>
				
			</ul>
			
		</div>
	</nav>
	
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
					     

				</form>
			</div>
		</div>
		
		<br>
		<br>
		
	<jsp:include page="../common/footer.jsp"></jsp:include>
	

	<!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->
	
	

	
</body>
</html>