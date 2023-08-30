<?php 
session_start();

	include("connection.php");
	include("functions.php");

	$user_data = check_login($con);

?>

<!DOCTYPE html>
<html>
<head>
	<title>Dashboard</title>
	<style>
		.container{
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 20px;
    padding-bottom: 60px;
}

.container .content{
    text-align: center;
}

.container .content h3{
    font-size: 30px;
    color: #333;
}

.container .content h3 span{
    background: crimson;
    color: #fff;
    border-radius: 5px;
    padding:0 15px;
}

.container .content h1{
    font-size: 50px;
    color: #333;
}

.container .content h1 span{
    color: crimson;
}

.container .content p{
    font-size: 25px;
    margin-bottom: 20px;
}

.container .content .btn{
    display: inline-block;
    padding: 10px 30px;
    background: #333;
    color: #fff;
    margin: 0 5px;
}
.container .content .btn:hover{
    background: crimson;
}

	</style>
</head>
<body>
<div class="container">
        <div class="content">
            <h1>Welcome <span><?php echo $user_data['fullname']; ?></span></h1>
            <p>Thank you for signing up for MYTech, This is our page.</p>
			<p>By Gana (<?php 
			echo (20 .date("y")) 
			?>)</p>
			<p><?php 
			echo "The time is -:" .date("h:i:a");
			?></p>
            <a href="logout.php" class="btn">Logout</a>
        </div>
    </div>
</body>
</html>