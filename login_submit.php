<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once 'dbconnect.php';

// Get user input
$username = $_POST['username'] ?? '';
$password = $_POST['password'] ?? '';

// Prevent SQL injection
$username = $bdd->real_escape_string($username);
$password = $bdd->real_escape_string($password);

// Check if user exists
// $sql = "SELECT id, password FROM users WHERE username = '$username'";
// $result = $bdd->query($sql);

// ✅ Check if user exists
$sql = "SELECT id, prenom, nom, username, email, phone, password FROM users WHERE username='$username' OR email='$username'";
$result = $bdd->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    
    //if you have to hash the password, use password_verify function, instead of if ($password === $row['password']) {
    // -->if (password_verify($password, $row['password'])) { <--

    if ($password === $row['password']) {  // Direct comparison (no hashing)
        // $_SESSION['user_id'] = $row['id'];
        // $_SESSION['username'] = $username;

        // ✅ Store user data in session
        $_SESSION['user_id'] = $row['id'];
        $_SESSION['prenom'] = $row['prenom'];
        $_SESSION['nom'] = $row['nom'];
        $_SESSION['username'] = $row['username'];
        $_SESSION['email'] = $row['email'];
        $_SESSION['phone'] = $row['phone'];
        
        // Redirect to previous page or default
        $redirect_page = $_SESSION['redirect_to'] ?? 'index-en.php';
        unset($_SESSION['redirect_to']);
        header("Location: $redirect_page");
        exit();
    } else {
        echo "Invalid password. <a href='loginpage-en.php'>Try again</a>";

    }
} else {
    echo "No user found with that username. <a href='loginpage-en.php'>Try again</a>";

}

$bdd->close();
?>
