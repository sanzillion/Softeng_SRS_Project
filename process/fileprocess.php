<?php 

session_start();
include "functions.php";
$db = connect();

if(isset($_POST['sub'])){
	// try{
		$uploaddir = '../uploads/';
		$uploadfile = $uploaddir . basename($_FILES['csv']['name']);
		echo $uploadfile.'<br>';
		if(move_uploaded_file($_FILES['csv']['tmp_name'],$uploadfile)){
			echo "good!<br>";
		}
		else{
			echo "not good!<br>";
		}
								//SOLVE THIS LOAD DATA INFILE (WITHOUT LOCAL FOR SECURITY)
		$name = $_FILES['csv']['name'];
		$query = $db->prepare("LOAD DATA LOCAL INFILE '$uploadfile' INTO TABLE `student` FIELDS 
		TERMINATED BY ',' LINES TERMINATED BY '\n' (`name` , `year`, `cpnum`)");
	//	$query->execute();
		if($query->execute()){
			echo 'successfully uploaded <br>';
			$query->closeCursor();
			//header('Location: ../pages/admin.php?error=none');
		}
		else{
			echo 'failed! <br>';
			$query->closeCursor();
			//header('Location: ../pages/admin.php?error=none');
		}
	// }
	// catch(Exception $e){
	// 	echo $e;
	// }
	
	
}

if(isset($_POST['submit'])){
	if(is_uploaded_file($_FILES['userfile']['tmp_name']) && 
		is_uploaded_file($_FILES['yrs']['tmp_name']) &&
		is_uploaded_file($_FILES['cpnum']['tmp_name'])){
		if($_FILES['userfile']['type'] != "text/plain" && 
			$_FILES['yrs']['type'] != "text/plain" &&
			$_FILES['cpnum']['type'] != "text/plain" ){
			echo "Invalid Filetype";
		}
		elseif($_FILES['userfile']['size'] > 5000 &&
			$_FILES['yrs']['size'] > 5000 &&
			$_FILES['cpnum']['size'] > 5000){
			echo "File too large";
		}
		elseif($_FILES['userfile']['size'] < 50 &&
			$_FILES['yrs']['size'] < 50 &&
			$_FILES['cpnum']['size'] < 50){
			echo "File too small";
		}
		elseif($_FILES['userfile']['error'] > 0 &&
			$_FILES['yrs']['error'] > 0 &&
			$_FILES['cpnum']['error'] > 0){
			echo "Invalid File/ No file";
		}
		else{
			
			$name = $_FILES['userfile']['name'].'<br>';

			$string = file_get_contents($_FILES['userfile']['tmp_name'], "r");
			$string2 = file_get_contents($_FILES['yrs']['tmp_name'], "r");
			$string3 = file_get_contents($_FILES['cpnum']['tmp_name'], "r");
			$names = explode("\n", $string);
			$yrs = explode("\n", $string2);
			$cpnum = explode("\n", $string3);

			echo $arraycount = count($names);
			echo $arraycount2 = count($yrs);
			echo $arraycount3 = count($cpnum);
			if($arraycount == $arraycount2 && 
				$arraycount == $arraycount3 && 
				$arraycount2 == $arraycount3){

				for($i = 0; $i < $arraycount; $i++){
				echo '<br>'.$i." - ".$yrs[$i];
				$yrs[$i] = substr($yrs[$i],0,3);
		    	$query = $db->prepare("INSERT INTO student SET 
								name = ?, year = ?, cpnum = ?");
				$query->bindParam(1,$names[$i]);
				$query->bindParam(2,$yrs[$i]);
				$query->bindParam(3,$cpnum[$i]);
				$query->execute();
					if($i == 49){
						header('Location: ../pages/admin.php?error=none');
					}
				}

			}
			else{
				echo "Data are inconsistent!";
			}
		}
	}
	else{
		echo "insufficient files";
	}
}
else{
	//header('Location: ../pages/admin.php?error=nofiles');
}	

 ?>