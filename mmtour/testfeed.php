<?php
$name = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['number'];
$image = $_POST['filename'];
$feedback = $_POST['feedback'];

$que="INSERT INTO `feedback` (`id`,`name`,`phone`,`email`,`feebk`,`filename`) values ('0','$name','$phone','$email','$feedback','$image')";
$con=mysqli_connect("localhost","root","","travel");

$result = mysqli_query($con, $que);

if(mysqli_affected_rows($con)>0) {
	header("location:feedback.php");
}
else{
    echo "try again";
}

?>