<?php 

$server = "localhost";
$db_username = "root";
$db_password = "";
$db_name = "portfolio";

$connect = mysqli_connect($server, $db_username, $db_password, $db_name);

if(!$connect) {
    die("Connection to database failed: ".mysqli_connect_error());
}