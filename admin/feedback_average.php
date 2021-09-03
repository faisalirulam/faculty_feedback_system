<form method="post">
<table class="table table-hover">
<tr>
<br><br>
<th><h2> Select Faculty</th></h2>
<td>
<select name="faculty" class="form-control">
	<?php
	$sql=mysqli_query($conn,"select * from faculty");
	while($r=mysqli_fetch_array($sql))
	{
	echo "<option value='".$r['email']."'>".$r['name']."</option>";
	
	}
		 ?>
</select>
</td>
<td><input name="sub" type="submit" value="Check Average" class="btn btn-success"/></td>
</tr>
</table>
</form>
<hr style="border:1px solid blue"/>
<br>

<?php
extract($_POST);
if(isset($sub))
{
//echo "<br>";
$n1=mysqli_query($conn,"select name from faculty where email='$faculty'");
$n2=mysqli_fetch_assoc($n1);
$n3=implode($n2);
$n4=ucfirst($n3);
echo "<center><u><h1>$n4</h1></u>";
//Count total Votes
$r=mysqli_query($conn,"select * from feedback where faculty_id='$faculty'");
$c=mysqli_num_rows($r);

echo "<center><h1>Total Students Rated : ".$c."</h1>";

$r1=mysqli_query($conn,"select avg(average) from feedback where faculty_id='$faculty'");
$c1=mysqli_fetch_array($r1);
$average=array_sum($c1)/count($c1);
$rate=round($average,2);
echo "<center><h1>Total Rating : ".$rate."&#9733 </h1>";
}
?>
