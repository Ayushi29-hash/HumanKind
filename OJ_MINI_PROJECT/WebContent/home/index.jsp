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

    <title>HumanKind</title>
		<style>
			/*body {
				background-image: url('img_1.jpeg');
				background-repeat: no-repeat;
				background-attachment: fixed;
				background-size: cover;
			}*/
			
			* {
				font-family: 'Nunito', sans-serif;
			}
			
			/*Service Section*/
			#services_offered {
				margin-top: 30px;
			}
			
			.services-column {
				padding: 20px;
				text-align: center;
			}
			
			.services-content {
				margin-top: 20px;
			}
			
			/*Gallery section*/
			#gallery {
				margin-top: 100px;
			}
			
			.img-container {
				text-align: center;
			}
			
			button {
				margin-top: 100px;
			}
			
			/*footer section*/
			footer {
				padding: 20px;
				margin-top: 50px;
				
				color: #ffffff;
			}
			
			.footer-link {
				color: white;
			}
			
			.footer-link:hover {
				color: white;
			}
			
			ul {
				list-style: none;
			}
			
			/*Contact Section*/
			.contact-section {
				margin-bottom: 20px;
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
				text-align: center;
				width: 100%;
				height: 60vh;
				padding: 0 2rem;
				background-image:
					url('https://images.unsplash.com/photo-1517093728432-a0440f8d45af?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjN8fGhlYWx0aHxlbnwwfDB8MHw%3D&auto=format&fit=crop&w=600&q=60');
				background-position: center;
				background-repeat: no-repeat;
				background-size: cover;
				position: relative;
				color: black;
			}
			
			.contact-section-header>h2 {
				font-size: 6rem;
			}
			
			@media ( max-width : 28.75em) {
				.contact-section-header>h2 {
					font-size: 4rem;
				}
			}
			
			.contact-section-header>p {
				font-style: italic;
			}
			
			.contact-links {
				display: flex;
				justify-content: center;
				width: 100%;
				max-width: 980px;
				margin-top: 4rem;
				flex-wrap: wrap;
			}
			
			.contact-details {
				font-size: 2.4rem;
				text-shadow: 2px 2px 1px #1f1f1f;
				transition: transform 0.3s ease-out;
			}
			
			.contact-details:hover {
				transform: translateY(8px);
				text-decoration: underline;
			}
</style>

<link rel="stylesheet" type="text/css" href="home/style.css">
  </head>
  <body>
    
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="<%= request.getContextPath() %>/index">HumanKind</a>
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
	<br>
	<br>

	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
	  <ol class="carousel-indicators">
	    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
	    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	  </ol>
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="img_2.jpeg" class="d-block w-100" style="height: 350px;"alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="img3.jpeg" class="d-block w-100" style="height: 350px;"alt="...">
	    </div>
	    <div class="carousel-item">
	      <img src="img_4.jpeg" class="d-block w-100" style="height: 350px;"alt="...">
	    </div>
	  </div>
	  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>
	
	<!--Services offered--> 

	<section id="services_offered" class="container">
		<h1 class="text-center">Services Offered</h1>
		<hr>
	<div class="row">
		<div class="col-sm-4  services-column">
			<img src="icon1.png" class="img-fluid img-responsive" width="20%">
			<p class="services-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. </p></div>
		<div class="col-sm-4 services-column">
			<img src="icon1.png" class="img-fluid img-responsive" width="20%">
			<p class="services-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitat services-columnion ullamco laboris nisi ut aliquip ex ea commodo
		consequat.</p></div>
		<div class="col-sm-4 services-column">
			<img src="icon1.png" class="img-fluid img-responsive" width="20%">
			<p class="services-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. </p></div>
	</div>
	<br>
	<br>
	


	</section>
	<!-- Gallery and Buy now-->
	<section id="gallery" class="container">
		<div class="row">
			<div  class="img-container col-sm-6">
				<img src="img_2.jpeg" class="img-fluid img-responsive" width="50%">
			</div>
			<div class="col-sm-6">
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				</p>
			</div>
			
		</div>
		<hr>
		<div class="row">
			
			<div class="col-sm-6">
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				</p>
			</div>
			<div  class="img-container col-sm-6">
				<img src="img3.jpeg" class="img-fluid img-responsive" width="50%">
			</div>
			
		</div>
		<hr>
		<div class="row">
			<div  class="img-container col-sm-6">
				<img src="img_2.jpeg" class="img-fluid img-responsive" width="50%">
			</div>
			<div class="col-sm-6">
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				</p>
			</div>
			
		</div>
		
	</section>
	
	<section id="contact" class="contact-section">
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

      <div class="contact-section-header">
        <h2>Let's turn the page...</h2>
        <p>Don't let fear cloud your judgement</p>
      </div>
      <div class="contact-links">
        <a href="https://www.facebook.com/"
           target="_blank"
           class="btn contact-details"
           ><i class="fa fa-facebook-square"></i></a>
       <a href="https://www.instagram.com/"
           target="_blank"
           class="btn contact-details"
           ><i class="fa fa-instagram"></i></a>
        <a
           href="https://twitter.com/"
           target="_blank"
           class="btn contact-details"
           ><i class="fa fa-twitter"></i>
          </a>
          
        <a href="mailto:justdoit@mail.com"
           class="btn contact-details"
           ><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-envelope-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
</svg></a>
          
          <br>
          

      </div>
      <!-- <div>
            <h5>Mail us: justdoit@gmail.com</h5>
          </div> -->
    </section>
    <br>
    <br>
<div style="background-image: url('https://images.unsplash.com/photo-1457369804613-52c61a468e7d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGJsb2d8ZW58MHx8MHw%3D&auto=format&fit=crop&w=600&q=60');">
<footer class="container"  >

	<div class="row">
		<div class="col-sm-4">
		<img src="img_1.jpeg" class="img-fluid img-responsive">
	</div>
		<div class="col-sm-4 text-center" >
			<h2 style="font-size: 24px;">Links</h2>
			<hr style="border: 2px solid white; width: 50%">
			
			<a href="#" class="footer-link">About</a>
			<br>
			<a href="#" class="footer-link">Privacy Policy</a>
			<br>
			<a href="#" class="footer-link">Terms and Condition</a>
	</div>
		<div class="col-sm-4 text-center">
			<h2 style="font-size: 24px;">Contact Us</h2>
			<hr style="border: 2px solid white; width: 50%">
			<p>Phone : 000000</p>
			<p>Email : Medica@yourcare.com </p>

		</div>
	</div>
	<br>
	<p class="text-center">Copyright &copy; Medica 2020. All rights reserved.</p>
	<p class="text-center">Made with &hearts; in India</p>
	</footer>
	</div>

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