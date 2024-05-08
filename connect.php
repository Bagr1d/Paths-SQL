<?php

	$host = "localhost";
	$db_user = "root";
	$db_password = "";
	$db_name = "szlaki";
// Create connection
$conn = @new mysqli($host, $db_user, $db_password, $db_name);

// Check connection
if ($conn->connect_errno!=0) {
  die("Connection failed: " . $conn->connect_error);
}

?>