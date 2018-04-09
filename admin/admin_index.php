<?php 
	//ini_set('display_errors', 1);
	//error_reporting(E_ALL); 
	require_once('phpscripts/config.php');
	confirm_logged_in();
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>CMS Portal Login</title>
<link href="css/main.css" media="all" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Concert+One" rel="stylesheet">

</head>
<body>
	<h1>Admin Login</h1>
    
	<?php echo "<h2>Hello-{$_SESSION['user_name']}</h2>" ?>
    <br>
	<a href ="admin_createuser.php">Create User</a>
	<a href ="admin_edituser.php">Edit User</a>
	<a href ="admin_deleteuser.php">Fired</a>
	<a href ="phpscripts/caller.php?caller_id=logout">Sign Out</a>
</body>
</html>