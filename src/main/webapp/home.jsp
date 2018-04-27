<html>
<head>

<title>welcome</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

#mid{
	height:80%;
	background-color: mediumseagreen;
}
#footer{
	height:5%;
	background-color:black;

}

h1   {color: black;}
p    {color: red;}
h3   {color: black; } 	

.button {
    background-color: #008CBA; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
</style>

<script >

   	 function myfunction() {
        location.href = "input_form.html";
}
</script>
  

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
	//out.print("you are successfully logged in");
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



<div class="row">

<div class="col-sm-12">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/carousel1.jpg" alt="Los Angeles">
    	 <div class="carousel-caption">
        <h3>Shopping</h3>
        <h3>get your own price</h3>
      </div>
    
    </div>

    <div class="item">
      <img src="images/photo3.jpg" alt="Chicago">
    	<div class="carousel-caption">
        <h3>Shopping</h3>
        <h3>get your own price</h3>
      </div>
    </div>

    <div class="item">
      <img src="images/slide2.jpg" alt="New York">
    	<div class="carousel-caption">
        <h3>Shopping</h3>
        <h3>get your own price</h3>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</div>
</body>



</html>

