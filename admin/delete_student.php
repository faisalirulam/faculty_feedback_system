<?php
include('../dbconfig.php');
	
	$info=$_GET['id'];
	
	mysqli_query($conn,"delete from student where st_id='$info'");
	header('location:dashboard.php?info=display_student');
?>