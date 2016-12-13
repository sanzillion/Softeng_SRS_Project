<?php

session_start();
include "../process/functions.php";
if(!isset($_SESSION['admin'])){
	header('Location: ../pages/login.php?error2');
}

$db = connect();

if(isset($_GET['action']) && $_GET['action']=='delete'){
	$id_sanc = $_GET['id'];
	deleteone($id_sanc);
	header('Location: ../pages/sanction.php');
}
elseif(isset($_GET['action']) && $_GET['action']=='deleteall'){
	deleteallsanction();
	header('Location: ../pages/sanction.php');
}

?>