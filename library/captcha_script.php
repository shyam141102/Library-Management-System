<?php 
session_start(); 

// Generate random verification code
$text = rand(10000, 99999); 
$_SESSION["vercode"] = $text; 
?>

