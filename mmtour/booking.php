<?php

$con=mysqli_connect('localhost','root','','travel');

$first = $_POST['ffirst'];
$flast = $_POST['flast'];
$femail = $_POST['femail'];
$city = $_POST['city'];
$fphone = $_POST['fphone'];
$fdesti = $_POST['fdesti'];


$sql="INSERT INTO `booking`(`id`,`ffirst`,`flast`,`femail`,`city`,`fphone`,`fdesti`) VALUES (0,'$first','$flast','$femail','$city','$fphone','$fdesti')";
$result = mysqli_query($con,$sql);

if(isset($_POST['submit'])){
	header('location:bookinghtml.php');
}
