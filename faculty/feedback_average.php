

<?php
extract($_POST);

{

//Count total Votes
$r=mysqli_query($conn,"select * from feedback where faculty_id='".$_SESSION['faculty']."'");
$c=mysqli_num_rows($r);
echo "<br><br><br><br><br><br>";
echo "<center><h1>Total Students Rated : ".$c."</h1>";

$r1=mysqli_query($conn,"select avg(average) from feedback where faculty_id='".$_SESSION['faculty']."'");
$c1=mysqli_fetch_array($r1);
$average=array_sum($c1)/count($c1);
$rate=round($average,2);
echo "<center><h1> Total Rating : ".$rate."&#9733 </h1>";
}
?>
