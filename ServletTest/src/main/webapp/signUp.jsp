<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome</title>
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</head>
<body
	style="background: url(bg.jpg); background-size: cover; background-attachment: fix;">
	<div class="container">
		<div class="row">
			<div class="col m6 offset-m3">
				<div class="card">
					<div class="card-content">
						<h3 style="margin-top: 10px;" class="center-align">Register
							Here</h3>
						<h5 id="msg"></h5>
						<div class="form center-align">
							<form id="myform" action="register" method="post">
								<input type="text" name="name" placeholder="Enter Name">
								<input type="password" name="password"
									placeholder="Enter Password"> <input type="email"
									name="email" placeholder="Enter Email">
								<button type="submit" class="btn red">SUBMIT</button>
							</form>
							<div class="loader center-align" style="margin-top:10px; ">
								<div class="preloader-wrapper big active">
									<div class="spinner-layer spinner-blue">
										<div class="circle-clipper left">
											<div class="circle"></div>
										</div>
										<div class="gap-patch">
											<div class="circle"></div>
										</div>
										<div class="circle-clipper right">
											<div class="circle"></div>
										</div>
									</div>

									<div class="spinner-layer spinner-red">
										<div class="circle-clipper left">
											<div class="circle"></div>
										</div>
										<div class="gap-patch">
											<div class="circle"></div>
										</div>
										<div class="circle-clipper right">
											<div class="circle"></div>
										</div>
									</div>

									<div class="spinner-layer spinner-yellow">
										<div class="circle-clipper left">
											<div class="circle"></div>
										</div>
										<div class="gap-patch">
											<div class="circle"></div>
										</div>
										<div class="circle-clipper right">
											<div class="circle"></div>
										</div>
									</div>

									<div class="spinner-layer spinner-green">
										<div class="circle-clipper left">
											<div class="circle"></div>
										</div>
										<div class="gap-patch">
											<div class="circle"></div>
										</div>
										<div class="circle-clipper right">
											<div class="circle"></div>
										</div>
									</div>
								</div>
								<h5>Please Wait...</h5>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous">
</script>
  <script>
	$(document).ready(function(){
			console.log("Page is ready ...")
			$(".loader").hide();
			$(".form").show();
			$("#myform").on('submit',function(event){
				event.preventDefault();

				var f=$(this).serialize();
				console.log(f);
				$(".loader").show();
				$(".form").hide();

				$.ajax({

					url:"register",
					data:f,
					type:'POST',
						success:function(data,textStatus,jqXHR)
						{
							console.log(data);
							console.log("Success......")
							$(".loader").hide();
							$(".form").show();
							},
							error:function(jqXHR,textStatus,errorThrown){
								console.log(data);
								console.log("Error......")
								$(".loader").hide();
								$(".form").show();
								}

					})
				})
		})
  </script>
</body>
</html>