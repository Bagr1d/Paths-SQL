<?php
$host = 'localhost'; // PostgreSQL server host
$port = '5432'; // PostgreSQL server port
$dbname = 'public'; // Your PostgreSQL database name
$user = 's48518'; // Your PostgreSQL username
$password = '5Ef6Dg5Lc4Ww'; // Your PostgreSQL password

// Connect to PostgreSQL
$db = new PDO("pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$password");

// Check the connection
if ($db === false) {
    die("Error: Could not connect to the database");
}

// Query the database
$query = "SELECT * FROM szlaki";
$stmt = $db->query($query);

// Fetch the results
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Display the results
foreach ($results as $row) {
    echo $row['column1'] . ' - ' . $row['column2'] . '<br>';
}

// Close the database connection
$db = null;
?>
