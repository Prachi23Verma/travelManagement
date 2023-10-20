 <?php

	$db=mysqli_connect('localhost','root','','travel');
    
	if (isset($_POST['goa'])) {
		$que = "SELECT * FROM `information` WHERE pname='Goa'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['kerala'])) {
		$que = "SELECT * FROM `information` WHERE pname='Kerala'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['shimla'])) {
		$que = "SELECT * FROM `information` WHERE pname='Shimla'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['ladakh'])) {
		$que = "SELECT * FROM `information` WHERE pname='Ladakh'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['kashmir'])) {
		$que = "SELECT * FROM `information` WHERE pname='Kashmir'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['hyderabad'])) {
		$que = "SELECT * FROM `information` WHERE pname='Hyderabad'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['chardham'])) {
		$que = "SELECT * FROM `information` WHERE pname='Chardham'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['shreelanka'])) {
		$que = "SELECT * FROM `information` WHERE pname='shreelanka'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['maldives'])) {
		$que = "SELECT * FROM `information` WHERE pname='Maldives'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['viyatnam'])) {
		$que = "SELECT * FROM `information` WHERE pname='Viyatnam'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['uk'])) {
		$que = "SELECT * FROM `information` WHERE pname='UK'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['us'])) {
		$que = "SELECT * FROM `information` WHERE pname='US'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['almaty'])) {
		$que = "SELECT * FROM `information` WHERE pname='Almaty'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['andman'])) {
		$que = "SELECT * FROM `information` WHERE pname='Andman'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['bali'])) {
		$que = "SELECT * FROM `information` WHERE pname='Bali'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['dubai'])) {
		$que = "SELECT * FROM `information` WHERE pname='Dubai'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['batam'])) {
		$que = "SELECT * FROM `information` WHERE pname='Batam'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['thailand'])) {
		$que = "SELECT * FROM `information` WHERE pname='Thailand'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['singapore'])) {
		$que = "SELECT * FROM `information` WHERE pname='Singapore'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['paris'])) {
		$que = "SELECT * FROM `information` WHERE pname='Paris'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['phuket'])) {
		$que = "SELECT * FROM `information` WHERE pname='Phuket'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['malayshia'])) {
		$que = "SELECT * FROM `information` WHERE pname='Malayshia'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['honeymoon'])) {
		$que = "SELECT * FROM `information` WHERE pname='Honeymoon'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['darjeeling'])) {
		$que = "SELECT * FROM `information` WHERE pname='Darjeeling'";
		$result = mysqli_query($db, $que);
	}
	if (isset($_POST['search_p'])) {
		$search = $_POST['search_p'];
		$que = "SELECT * FROM `information` WHERE pname='$search'";
		$result = mysqli_query($db, $que);
	}
	?>

 <!DOCTYPE html>
 <html>

 <head>
 	<meta charset="utf-8">
 	<meta name="viewport" content="width=device-width initial-scale=1.0">
 	<link rel="stylesheet" type="text/css" href="css/info.css">
 	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.4.0/css/all.css">
 	<title>Information</title>
 </head>

 <body>
 	<div class="extra">
 		<a class="wp" href="http://wa.me/917489965999">whatsapp<i class="fa-brands fa-whatsapp"></i></a>
 		<a class="fb" href="https://www.facebook.com/">facebook<i class="fa-brands fa-facebook-f"></i></a>
 		<a class="inst" href="https://www.instagram.com/">instagram<i class="fa-brands fa-instagram"></i></a>
 		<a class="tw" href="https://twitter.com/">twitter<i class="fa-brands fa-twitter"></i></a>
 		<a href="tel:7489965999" class="call">call<i class="fa-solid fa-phone"></i></a>
 	</div>
 	<div class="main">
 		<ul>
 			<ul class="list">
 				<li class="logo"><a href="mainPage.html"><img src="images/logo/mainlogo.jpeg" alt="logo" style="width:6rem;height:6rem;border-radius:50%;"></a></li>
 				<div class="search">
 					<form method="POST" action="info.php">
 						<input type="text" name="search_p" placeholder="Search.." size="50">

 						<input type="image" name="submit_p" src="search_icon.png" alt="Search image" style="width:2rem;height:2rem; margin-left: 3.5rem;">
 					</form>
 				</div>
 			</ul>
 			<ul class="list2">
 				<li class="active-menu"><a href="mainPage.php">Home</a></li>
 				<li><a id="long" href="destination.php">Destination</a></li>
 				<li><a href="gallery.php">Testimonials</a></li>
 				<!-- <li><a href="Flight.php">Flight</a></li> -->
 				<!-- <li><a href="hotels.php">Hotels</a></li> -->
 				<li><a href="grouptour.php">GroupTour</a></li>
 				<li><a href="feedback.php">Feedback</a></li>
 				<li><a href="index.php">Logout</a></li>
 			</ul>
 		</ul>
 	</div>
 	<div class="hedder">
 		<h1>PLACE INFORMATION</h1>
 		<?php
			while ($rows = mysqli_fetch_assoc($result)) {
			?>
 			<h1 class="heading"><?php echo $rows['pname']; ?></h1>
 			<p style="font-size: 1.5rem;">Thank You Very Much For Choosing “M.M TOUR &amp TRAVELS” For Making Query With Us. As Per Your Requirement We Are Pleased To Send You The Details.</p>
 			  	<img src="<?php echo $rows['pi2']; ?>" alt=" Image" style="width: 50%;height: 27rem;">     
 			<h2>INCLUSIONS :-</h2>
 			<p class="text"><?php echo $rows['pdescription']; ?></p>
 			<p class="text"><?php echo $rows['pi_main']; ?></p>
			 <img src="<?php echo $rows['pi3']; ?>" alt=" Image" style="width: 50%;height: 27rem;">      
 			<h2>EXCLUSIONS :-</h2>
 			<p><?php echo $rows['pi1']; ?></p>
			<h1 class="heading">PACKAGE:-</h1>
 			<p class="Package" style=" background-color: gold; padding: 2rem; font-size: 3rem;  border: 0.1rem solid black;  text-decoration: none;"> <?php echo $rows['package']; ?>RS:</p>

 			<a href="bookinghtml.php" class="button">Book Tour</a>
 	</div>
	<footer>

	</footer>
 		<?php
			}
		?>
 </body>

 </html>