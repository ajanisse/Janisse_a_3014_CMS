<?php
    // ini_set('display_errors',1);
    // error_reporting(E_ALL);
    require_once('phpscripts/config.php');
    $result = multiReturns(6);
    list($add,$multiply) = multiReturns(8);
?>

<doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>CMS Portal</title>
    <link href="css/main.css" media="all" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Concert+One" rel="stylesheet">
</head>
<body>
    <?php
        echo "Result 1: {$result[0]}<br>";
        echo "Result 2: {$result[1]}<br>";
        echo "Result 3: {$add}<br>";
        echo "Result 4: {$multiply}<br>";
    ?>
</body>
<html>