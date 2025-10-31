<?php
session_start();

require_once 'admin_dbconnect.php';

$username = $_POST['username'] ?? '';
$email = $_POST['email'] ?? '';
$password = $_POST['password'] ?? '';

// Prepare and execute SQL
$stmt = $conn->prepare("SELECT * FROM admin_users WHERE username = ? LIMIT 1");
$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 1) {
    $user = $result->fetch_assoc();

    if ($user['email'] === $email && $user['password'] === $password) {
        $_SESSION['loggedin'] = true;
        $_SESSION['username'] = $user['username'];
        $_SESSION['email'] = $user['email'];

        echo "success";
    } else {
        echo "invalid_credentials"; 
    }
} else {
    echo "user_not_found";
}

$stmt->close();
$conn->close();
?>




<?php
// session_start();

// // Example after verifying credentials (replace with actual DB check)
// if (!isset($_SESSION['loggedin'])) {
//     // Check if the user is already logged in
//     $_SESSION['loggedin'] = true;
//     $_SESSION['username'] = $username; // Optional: store more info
//     echo "success";

//     // Redirect the user to the page they were trying to access
//     if (isset($_SESSION['redirect_to'])) {
//         $redirectUrl = $_SESSION['redirect_to'];
//         unset($_SESSION['redirect_to']); // Clear redirect URL after using it
//         header("Location: $redirectUrl");
//     } else {
//         // If no redirect URL, send them to the dashboard or default page
//         header("Location: index-admin.php");
//     }
//     exit();
// }
?>