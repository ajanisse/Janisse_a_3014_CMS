<?php
    // ini_set('display_errors',1);
    // error_reporting(E_ALL);
    require_once('phpscripts/config.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="css/main.css" media="all" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Concert+One" rel="stylesheet">
    <title>Edit All</title>
</head>
<body>
    <?php
        echo single_edit('tbl_movies','movies_id',1);
        phpinfo();
    ?>
</body>
</html>