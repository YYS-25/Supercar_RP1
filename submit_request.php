<?php
header("Content-Type: application/json"); // Ensure JSON response
session_start();
error_log("voiture_id received: " . print_r($_POST['voiture_id'], true));


require_once 'dbconnect.php';

// Check connection
if ($bdd->connect_error) {
    echo json_encode(["status" => "error", "message" => "Database connection failed: " . $bdd->connect_error]);
    exit();
}

// Debugging: Check if request is received
if ($_SERVER["REQUEST_METHOD"] !== "POST") {
    echo json_encode(["status" => "error", "message" => "Invalid request method"]);
    exit();
}

// Debugging: Log all received data
error_log("Received data: " . print_r($_POST, true));

// Get form data
$last_name = $_POST['last_name'] ?? '';
$first_name = $_POST['first_name'] ?? '';
$email = $_POST['email'] ?? '';
$phone = $_POST['phone'] ?? '';
$brand = $_POST['brand'] ?? '';
$model = $_POST['model'] ?? '';
$request_date = $_POST['request_date'] ?? '';
$request_time = $_POST['request_time'] ?? '';
$comments = $_POST['comments'] ?? '';

$user_id = $_SESSION['user_id'] ?? 'NULL'; //if logged in, get user_id, else NULL
$voiture_id = isset($_POST['voiture_id']) && is_numeric($_POST['voiture_id']) ? (int)$_POST['voiture_id'] : 'NULL'; //if selected, get voiture_id as int, else NULL
$status = "Pending";

// Debugging: Check if data is empty
if (empty($brand) || empty($model) || empty($request_date) || empty($request_time)) {
    echo json_encode(["status" => "error", "message" => "❌ All fields are required"]);
    exit();
}
error_log("voiture_id received: " . print_r($voiture_id, true));

// Insert into database
$sql = "INSERT INTO testdrive_request (brand, model, request_date, request_time, comments, user_id, voiture_id, status) 
        VALUES ('$brand', '$model', '$request_date', '$request_time', '$comments', " . ($user_id === 'NULL' ? 'NULL' : (int)$user_id) . ", " . ($voiture_id === 'NULL' ? 'NULL' : (int)$voiture_id) . ", '$status')";

if ($bdd->query($sql) === TRUE) {
    echo json_encode(["status" => "success", "message" => "✅ Request sent successfully!"]);
} else {
    echo json_encode(["status" => "error", "message" => "❌ Database error: " . $bdd->error]);
}

$bdd->close();
?>
