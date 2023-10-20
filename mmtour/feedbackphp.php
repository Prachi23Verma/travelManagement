<?php

$con = mysqli_connect('localhost', 'root', '', 'travel');

$name = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$feedback = $_POST['feedback'];

$que="INSERT INTO `feedback` (`id`,`name`,`phone`,`email`,`feedback`) VALUES (0,'$name','$phone','$email','$feedback')";

$result = mysqli_query($con, $que);

if (isset($_POST['submit'])) {
	header('location:feedback.php');
}

?>