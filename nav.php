<!DOCTYPE html>
<html>
<head>
	<title>Navigation Area</title>
	<style type="text/css">
		#nav	{
			font-family:"Times New Roman",sans-serif;
			font-size: 20px;
		}
		a 	{
			color: white;
		}
	</style>
</head>
<body>
<div id="nav" align="right">
<a href="index.php">Home</a> &nbsp; &nbsp; &nbsp;
<a href="book.php">Book a ticket</a> &nbsp;
<?php
if(isset($_SESSION['user_info']))
	echo 'Welcome '.$_SESSION['user_info'].'</a>';
else
	echo '<A HREF="register.php">Register/Login</A>';
?>
</div>
</body>
</html>