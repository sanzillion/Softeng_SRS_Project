<?php
session_start();
include "../process/functions.php";
if(!isset($_SESSION['admin'])){
	header('Location: ../pages/login.php?error2');
}

$db = connect();
$array = getstudents(); //select everyone
$num = 0; // for table color

if(isset($_POST['search'])){ //search by name
	if(findname($_POST['search'])){
		$array = getstudent2($_POST['search']);
	}
	else{
		header('Location:#popup3');
	}
}
if(isset($_POST['searchyr'])){ //search by year
	$yr = $_POST['searchyr'];
	$array = getbyyr($yr);
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
	<link href = "../css/main.css" rel = "stylesheet">
</head>
<body background="../img/bc.png">
	<div class="banner">
		<div class="logo"><img src="../img/s.png"></div>
	</div>
	<div class="container">
		<div class="innerbanner">
		<ul>
			<li><a class="students" href="admin.php">Admin</a></li>
			<li class="admin">Students</li>
			<li><a class="meetings" href="meeting.php">Meetings</a></li>
			<li><a class="sanctions" href="sanction.php">Sanctions</a></li>
			<div class="diff"><li><a href=""><img src="../img/set.png"></a>
				<ul class="dropdown" text-align="right">
					<li><a href="">Help</a></li>
					<li><a href="../process/logout.php">Logout</a></li>
				</ul>
			</li></div>
		</ul>

			
		</div>
		<div class="contentbox">

		<div class="innerbox1">
		<form class="regform" method="POST" action="../process/registerprocess.php">
		<p>Register Student</p>
		<?php
			if(isset($_GET['error'])){
			$id2 = "errors";
			echo '<div class='.$id2.'>Name already exists!</div>';
			}	
		?>
		<input type="text" name="fname" placeholder="firstname" required>
		<input type="text" name="lname" placeholder="lastname" required>
		<input type="text" name="cpnum" placeholder="cp number | ex: 63907..." required>
		<label>Year:</label> <select name="yr" required>
			<option></option>
			<option>1st</option>
			<option>2nd</option>
			<option>3rd</option>
			<option>4th</option>
		</select>
		<input type="submit" name="submitstudent">
		</form>
			<p>Search by Year:</p>
			<form class="searchyr" method="POST" action="student.php">
			<select name="searchyr" onchange="this.form.submit()">
				<option disabled>Search here</option>
				<option>1st</option>
				<option>2nd</option>
				<option>3rd</option>
				<option>4th</option>
			</select>
			</form>
			<br>
				
			<a href="../process/deletestudent.php?action=deleteall" onclick="return confirm('Sanction Records Will be deleted too!')">Delete All</a>
		</div>
			<div class="innerbox7">
			<form class="searchstudent" method="POST" action="student.php" >
					<input type="text" name="search" placeholder="Search student name">
			</form>
			<div class="innerbox2">

				<table class="table1">
					<tr>
						<th>Name</th>
						<th>Year</th>
						<th>Mobile No.</th>
						<th>Option</th>
					</tr>
					<?php foreach ($array as $g):?>
					<tr <?php 
						$color = $num % 2;
						if($color == 1){
							echo "style=\"background-color: #a7f5b2;\"";
						}
						else{
							echo "style=\"background-color: none;\"";
						}
						$num++;					
						?>>
						<td><?php echo  $g->name; ?></td>
						<td><?php echo  $g->year; ?></td>
						<td><?php echo  $g->cpnum; ?></td>
						<td><a 	href="../process/pass.php?id=<?php echo $g->s_id;?>">
						<img src="../img/edit.png">&nbsp</a>
						<a href="../process/deletestudent.php?id=<?php echo $g->s_id;?>
						&action=delete" onclick="return confirm('Are you sure?')">
						<img src="../img/delete.png"></a>
						</td>
					</tr>
					<?php endforeach;?>
				</table>
			</div>
			</div>	
		</div>
	</div>

	<div id="popup" class="overlay">
		<?php
		$s_id = $_SESSION['id'];
		$account = getstudentsbyid($s_id);
		?>
	<div class="popup">
		<?php
			// if($_SESSION['error']=='1'){
			// $id2 = "error1";
			// echo '<div class='.$id2.'>Wrong Password</div>';
			// }
			// elseif($_SESSION['error']=='3'){
			// $id2 = "error1";
			// echo '<div class='.$id2.'>Retype it correctly</div>';
			// }
			// elseif($_SESSION['error']=='2'){
			// $id2 = "error1";
			// echo '<div class='.$id2.'>Set a new password</div>';
			// }		
		?>
		<h2>Student Information</h2>
		<a class="close" href="#">&times;</a>
		<div class="content2">
			<form action="../process/updatestudent.php" method="POST">
			<h3>Student no.<?php echo $account->s_id; ?> </h3>
			<input required="Required Field" type="hidden" name="id"
				value="<?php echo $account->s_id;?>"></td>
			<table class="poptable">
			<tr>
				<td><label>Name:</label></td>
				<td><input type="text" name="name" required
				value="<?php echo $account->name?>"</td>
			</tr>
			<tr>
				<td><label>Mobile No.:</label></td>
				<td><input type="text" name="cpnum" required
				value="<?php echo $account->cpnum?>"</td>
			</tr>
			<tr>
				<td><label>Year:</label></td>
				<td>
				<select name="yr" reuired>
					<option><?php echo $account->year?></option>
					<option>1st</option>
					<option>2nd</option>
					<option>3rd</option>
					<option>4th</option>
				</select>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="update" value="Save"></td>
			</tr>
						
			</table>
			</form>
		</div>
	</div>
	</div>

	<div id="popup2" class="overlay">
	<div class="popup">
		<a class="close" href="#">&times;</a>
		<div class="content3">
			<h2>Successfully Updated!</h2>
		</div>
	</div>
	</div>

	<div id="popup3" class="overlay">
	<div class="popup">
		<a class="close" href="#">&times;</a>
		<div class="content3">
			<h2>No results Found!</h2>
		</div>
	</div>
	</div>

</body>
</html>