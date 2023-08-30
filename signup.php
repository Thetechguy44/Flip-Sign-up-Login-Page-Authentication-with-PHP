<?php 
session_start();

	include("connection.php");
	include("functions.php");


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$fullname = $_POST['fullname'];
		$email = $_POST['email'];
		$password = $_POST['password'];

		if(!empty($fullname) && !empty($email) && !empty($password) && !is_numeric($fullname))
		{

			//save to database
			$user_id = random_num(20);
			$query = "INSERT into loginsign (user_id,fullname,email,password) values ('$user_id','$fullname','$email','$password')";

			mysqli_query($con, $query);
			header('Location: index.php');
			die;
		}else
		{
			echo "Please enter some valid information!";
		}
	}
?>
