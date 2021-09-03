<h1 align="center" style="text-decoration:underline"><a href="">Admin Dashboard</a></h1>
<br>
<?php 
//all complaints
$qq=mysqli_query($conn,"select * from faculty ");
$rows=mysqli_num_rows($qq);			
echo "<h2 style='color:black'>Total Number of Faculty : $rows</h2>";	

//all emegency compalints
$q=mysqli_query($conn,"select * from student");
$rr=mysqli_num_rows($q);			
echo "<h2 style='color:black'>Total Number of Student : $rr</h2>";	


//all users
$q2=mysqli_query($conn,"select * from feedback");
$r2=mysqli_num_rows($q2);			
echo "<h2 style='color:black'>Total Number of Feedback given by Students  : $r2</h2>";	


					

?>
