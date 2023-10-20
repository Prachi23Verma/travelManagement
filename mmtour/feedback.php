<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title> M.M. Tours Feedback Form</title>
	<link rel="stylesheet" type="text/css" href="feedback.css">
</head>

<body>
<header>
      <nav class="nav">
        <img src="logo.jpeg" alt="logo" style="height:5rem;width:5rem;border-radius:50%;">
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
	<div class="feedback">
		<h1>Feedback Form</h1>
		<form name='feedbackForm' method="POST" action="feedbackphp.php">
			<div class="form-group">
				<label>Your Name</label>
				<input type="text" name="name" class="form-control" id="inputText" placeholder="Your Name" required>
			</div>
			<div class="form-group">
				<label>Phone Number</label>
				<input type="text" name="phone" class="form-control" id="inputphone" placeholder="Your number" required>
			</div>
			<div class="form-group">
				<label>Your Email</label>
				<input type="email" name="email" class="form-control" id="inputEmail" placeholder="Your Email">
			</div>
			<div class="form-group text1">
				<label>Feedback:</label>
				<textarea class="inputTextarea" name="feedback" rows="4" class="form-control" ng-model='feedback' placeholder="Please write your Feedback here" required></textarea>
			</div>
			<div class="wrapper">
				<button type="submit" class="btn btn-primary wrapper" ng-click="performValidation()" name="submit">Submit Feedback</button>
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