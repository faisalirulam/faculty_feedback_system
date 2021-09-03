<?php 
$q=mysqli_query($conn,"select faculty_id,qs1,qs2,qs3,qs4,qs5,qs6,qs7,qs8,qs9,qs10,qs11,qs12,qs13,qs14,qs15,qs16,qs17 from feedback where faculty_id='".$_SESSION['faculty']."'");
$r=mysqli_num_rows($q);
if($r==false)
{
echo "<h3 style='color:Red'>No any records found ! </h3>";
}
else
{
?>



<div class="row">
	<div class="col-sm-12" style="color:black;">
		<h1 align="center" ><u>Feedback</h1></u>
	</div>
</div>
<div class="row">

<div class="col-sm-12">

<table class="table table-bordered">

	<thead >
	
	<tr class="success">
		<th>S.No</th>
		<th>Q1</th>
		<th>Q2</th>
		<th>Q3</th>
		<th>Q4</th>
		<th>Q5</th>
		<th>Q6</th>
		<th>Q7</th>
		<th>Q8</th>
		<th>Q9</th>
		<th>Q10</th>
		<th>Q11</th>
		<th>Q12</th>
		<th>Q13</th>
		<th>Q14</th>
		<th>Q15</th>
		<th>Q16</th>
		<th>Q17</th>
		
		</tr>
		</thead>
		
		<?php
		$i=1;
	while($row=mysqli_fetch_array($q))
		{
			echo "<tr>";
			echo "<td>".$i."</td>";
			echo "<td>".$row[1]."</td>";
			echo "<td>".$row[2]."</td>";
			echo "<td>".$row[3]."</td>";
			echo "<td>".$row[4]."</td>";
			echo "<td>".$row[5]."</td>";
			echo "<td>".$row[6]."</td>";
			echo "<td>".$row[7]."</td>";
			echo "<td>".$row[8]."</td>";
			echo "<td>".$row[9]."</td>";
			echo "<td>".$row[10]."</td>";
			echo "<td>".$row[11]."</td>";
			echo "<td>".$row[12]."</td>";
			echo "<td>".$row[13]."</td>";
			echo "<td>".$row[14]."</td>";
			echo "<td>".$row[15]."</td>";
			echo "<td>".$row[16]."</td>";
			echo "<td>".$row[17]."</td>";
			
			
			
		
			echo "</tr>";
		$i++;
		}
		
		?>
		
	
		
</table>
</div>
</div>
<?php }?>