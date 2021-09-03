<script type="text/javascript">
function deletes(fac_id)
{
	a=confirm('Are You Sure To Remove This Record ?')
	 if(a)
     {
        window.location.href='delete_faculty.php?id='+fac_id;
     }
}
</script>	


<?php
	echo "<table class='table table-responsive table-bordered table-striped table-hover' style=margin:15px;>";
	echo "<tr>";
	
	echo "<th>S.No</th>";
	echo "<th>Name</th>";
	echo "<th>Designation</th>";
	echo "<th>Department</th>";
	echo "<th>Status</th>";
		
	echo "<th>Email</th>";
	echo "<th>Mobile</th>";
	echo "<th>Password</th>";
	echo "<th>Update</th>";
	echo "<th>Delete</th>";
	
	echo "</tr>";
	
	$i=1;
	$que=mysqli_query($conn,"select * from faculty");
	
	while($row=mysqli_fetch_array($que))
	{
		echo "<tr>";
		echo "<td>".$i."</td>";
		echo "<td>".$row['name']."</td>";
		echo "<td>".$row['designation']."</td>";
		echo "<td>".$row['department']."</td>";
		echo "<td>".$row['status']."</td>";
		
		echo "<td>".$row['email']."</td>";
		echo "<td>".$row['mobile']."</td>";
		echo "<td>".$row['password']."</td>";
		echo "<td class='text-center'><a href='dashboard.php?id=$row[fac_id]&info=edit_faculty'>UPDATE</a></td>";
		
		
		echo "<td class='text-center'><a href='#' onclick='deletes($row[fac_id])'>DELETE</a></td>";
		
		echo "</tr>";
		$i++;
		
		
	}
	
?>