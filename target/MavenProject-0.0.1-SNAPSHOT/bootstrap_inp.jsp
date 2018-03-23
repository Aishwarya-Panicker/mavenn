<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
body {
	background-color: white;
	backgrouNd-image:url("images/photo3.jpg");
	
}

label {
	color: WHITE;
}
.container{
margin-top: 0%;
background-color: BLACK;
opacity:0.7;

}


</style>

</head>
<body>
<%
//allow access only if session exists
String user = null;
if(session.getAttribute("user") == null){
	response.sendRedirect("index.jsp");
	
}
else{ 
	user = (String) session.getAttribute("user");
	out.print("you are successfully logged in");
}

%>
	
<div class="row">
<div class="col-sm-12">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">YourAuctionSite.com</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home.jsp">Home</a></li>
      <li><a href="bootstrap_inp.jsp">Add Product</a></li>
      <li><a href="catalog.jsp">Browse</a></li>
      
    </ul>
  </div>
</nav>
</div>
</div>
	
	<div class="container fluid">
		<h1 align="center">ENTER DETAILS</h1>
		<form method="post" action="InsertDb" class="form-horizontal"
			role="form" enctype="multipart/form-data">

			<div class="row"> 
				<div class="col-sm-3"></div>
				<div class="col-sm-6">

					<label for="usr">Product Name:</label> <input type="text"
						class="form-control input sm" id="Pname" name="firstname">
				</div>
				<div class="col-sm-3"></div>
			</div>

			<br>
			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<label for="comment">Comment:</label>
					<textarea class="form-control input sm" rows="5" id="description" name="message"></textarea>
				</div>
				<div class="col-sm-3"></div>
			</div>
			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<label for="usr">Base Price</label> <input type="number"
						class="form-control input sm" id="price" name="base">
				</div>
				<div class="col-sm-3"></div>
			</div>
			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<label for="usr">Number Of Hours for auction</label> <input
						type="number" class="form-control input sm" name="hours" id="hours">
				</div>
				<div class="col-sm-3"></div>
			</div>

			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<label for="usr">Increment Per Bid</label> <input type="number"
						class="form-control input sm" name="incr" id="inc">
				</div>
				<div class="col-sm-3"></div>
			</div>

			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<label for="usr">Enter the Picture</label> <input type="file"
						class="form-control input sm" id="pic" name="photo">
				</div>
				<div class="col-sm-3"></div>
			</div>
			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
				<div class="col-sm-3"></div>
			</div>

		</form>
	</div>

</body>

</html>