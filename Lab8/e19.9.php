<?php

$host = 'localhost';
$username = 'username'; 
$password = 'password'; 
$database = 'URLs';

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

function insertUrl($url, $description, $conn) {
    $stmt = $conn->prepare("INSERT INTO urltable (URL, description) VALUES (?, ?)");
    $stmt->bind_param("ss", $url, $description);
    $stmt->execute();
    $stmt->close();
}

function displayUrls($conn) {
    $result = $conn->query("SELECT ID, URL, description FROM urltable");
    echo "<table border='1'><tr><th>ID</th><th>URL</th><th>Description</th></tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["ID"] . "</td><td>" . $row["URL"] . "</td><td>" . $row["description"] . "</td></tr>";
    }
    echo "</table>";
}

insertUrl('http://www.deitel.com', 'Cool site!', $conn);
insertUrl('http://www.php.net', 'The official PHP site.', $conn);

displayUrls($conn);

$conn->close();
?>
