<html>
	<head>
		<title>Form Submit</title>
		<style>
			.container{
				width:60%;
				border:1px solid black;
				margin: auto;
				padding:20px;
			}
		</style>
	</head>
	<body>
		<div class="container">
		<h1>My Form</h1>
			<form action="registerServlet" method="post">
				<table>
					<tr>
						<td>Enter Your Name : </td>
						<td><input type="text" name="uname" placeholder="Rohit Pandey"></td>
					</tr>
					<tr>
						<td>Enter password : </td>
						<td><input type="password" name="pass" ></td>
					</tr>
					<tr>
						<td>Enter email : </td>
						<td><input type="email" name="uemail" placeholder="rohit@gmail.com"></td>
					</tr>
					<tr>
						<td>Select Gender : </td>
						<td><input type="radio" name="gender" value="Male">Male &nbsp; &nbsp;<input type="radio" name="gender" value="Female">Female</td>
					</tr>
					<tr>
						<td>Select Your Cource : </td>
						<td>
							<select name="cource">
								<option>Java</option>
								<option>Python</option>
								<option>Database</option>
								<option>Android</option>
								<option>Networking</option>
								<option>OS</option>
							</select>
						</td>
						
					</tr>
					<tr>
						<td style="text-align:center;"><input type="checkbox" value="checked" name="condition"></td>
						<td><a href="https://www.facebook.com/terms.php">Agree terms and condition</a></td>
					</tr>
						<td></td>
						<td><button type="submit">Register</button></td>
						<td><button type="reset">Reset</button>
					<tr>
				</table>
			</form>
		</div>
		
	</body>
</html>
