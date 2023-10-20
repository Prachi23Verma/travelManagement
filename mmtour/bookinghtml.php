<!DOCTYPE html>
<html>
<head>
	<title> M.M. Tour & Travels Booking Form</title>
	<link rel="stylesheet" type="text/css" href="css/booking.css">
	<script>
		function validateForm() {
			if (isEmpty(document.getElementById('data_3').value.trim())) {
				alert('First name is required!');
				return false;
			}
			if (isEmpty(document.getElementById('data_4').value.trim())) {
				alert('Last name is required!');
				return false;
			}
			if (!validateEmail(document.getElementById('data_5').value.trim())) {
				alert('Email must be a valid email address!');
				return false;
			}
			if (!validateEmail(document.getElementById('data_6').value.trim())) {
				alert('Phone number is required! ');
				return false;
			}
			return true;
		}
		function isEmpty(str) { return (str.length == 0 || !str.trim()); }
		function validateEmail(email) {
			var re = "";
			return isEmpty(email) || re.test(email);
		}
	</script>
</head>
<body>
<header>
      <nav class="nav">
        <img src="logo.jpeg" class="logo" alt="logo" style="height:5rem;width:5rem;border-radius:50%;">
        <div class="search">
          <form method="POST" action="info.php">
            <input type="text" name="search_p" placeholder="Search.." size="50">
        
            <input type="image" name="submit_p" src="search_icon.png" alt="Search image" style="width:2rem;height:2rem; margin-left: 3.5rem;">
          </form>
      </div>

        <div class="hamburger">
          <span class="line"></span>
          <span class="line"></span>
          <span class="line"></span>
        </div>

        <div class="nav__link hide">
          <a href="mainPage.php">home</a>
          <a href="destination.php">destination</a>
          <a href="gallery.php">testimonials</a>
          <a href="grouptour.php">grouptour</a>
          <a href="index.php">logout</a>
        </div>
      </nav>
 </header>
	<h1>Tour Booking</h1>
	<div class="container">
		<form method="POST" action="booking.php" name="form" onsubmit="return validateForm()">
			<div class="textbox">
				<input type="text" placeholder="First Name" name="ffirst" value=""  onkeypress="return /[a-zA-Z]/i.test(event.key)" required>  
			</div>

			<div class="textbox">
				<input type="text" placeholder="Last Name" name="flast" value="" onkeypress="return /[a-zA-Z]/i.test(event.key)" required> 
			</div>

			<div class="textbox">
				<input type="text" placeholder="Email" name="femail" value="" required pattern="[a-z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-z0-9-]+.[a-z]{2,4}" title="Invalid Email">
			</div>

			<div class="textbox">
				<input type="text" placeholder="City" name="city" value="" onkeypress="return /[a-zA-Z]/i.test(event.key)" required>
			</div>

			<div class="textbox">
				<input type="text" placeholder="Phone" name="fphone" value="" onkeypress="return /[0-9]/i.test(event.key)" maxlength="10" pattern="([0-9]){10,}" required>
			</div>

			<div class="textbox">
				<input type="text" placeholder="Destination" name="fdesti" value="" required>
			</div>
			<!-- <div class="texbox" id="payment">
				<a href="http://" target="_blank" rel="noopener noreferrer" onkeypress="">Pay Now</a>
			</div> -->
			<div class="btn">
				<input name="submit" value="Submit" type="submit">
			</div>
		</form>
	</div>
	<script>
		const hamburger = document.querySelector('.hamburger');
const navLink = document.querySelector('.nav__link');

hamburger.addEventListener('click', () => {
  navLink.classList.toggle('hide');
});
	</script>

</body>
</html>