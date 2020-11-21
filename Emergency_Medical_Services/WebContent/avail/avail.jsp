<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book you ambulance</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

</head>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="container">

	<h2>Book your Ambulance</h2>
	<div class="col-md-6 col-md-offset-3">
			<div class="alert alert-success center" role="alert">
				<p>${NOTIFICATION}</p>
			</div>
			
		<form action="<%=request.getContextPath()%>/avail" method="post">

					<div class="form-group">
						<label for="uname">Name:</label> <input type="text"
							class="form-control" id="uname" placeholder="Name"
							name="Name" required>
					</div>


					<div class="form-group">
						<label for="uname">Phone Number:</label> <input type="text"
							class="form-control" id="phoneno" placeholder="Phone Number"
							name="phoneno" required>
					</div>

					
					<div class="form-group">
						<label for="uname">Pick Up Location:</label> <input type="text"
							class="form-control" id="pickup" placeholder="Pick Up"
							name="pickup" required>
					</div>
					
					<div class="form-group">
						<label for="uname">Drop Location:</label> <input type="text"
							class="form-control" id="drop" placeholder="Drop"
							name="drop" required>
					</div>
					
							
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