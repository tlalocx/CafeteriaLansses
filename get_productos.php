<?php
include('connection.php');
$stmt = $conn->prepare("SELECT * FROM productos");
$stmt->execute();

$productos = $stmt->get_result();
