<?php
session_start();
require_once 'client_dbconnect.php';


$prenom = $_POST['prenom'];
$nom = $_POST['nom'];
$username = $_POST['username'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$password = $_POST['password'];
$confirm_password = $_POST['confirm-password'];

// vefirie si les mdp sont similaires
if ($password !== $confirm_password) {
    die("Error: Passwords do not match. <a href='signup-en.php'>Try again</a>");
}

$sql = "INSERT INTO users (prenom, nom, username, email, phone, password) VALUES ('$prenom', '$nom', '$username', '$email', '$phone', '$password')";
if ($bdd->query($sql) === TRUE) {

       // ✅ Store user session (auto-login after signup)
       $_SESSION['user_id'] = $bdd->insert_id;  // Get the last inserted user ID
       $_SESSION['prenom'] = $prenom;
       $_SESSION['nom'] = $nom;
       $_SESSION['username'] = $username;
       $_SESSION['email'] = $email;
       $_SESSION['phone'] = $phone;

    header("Location: essai-en.php");
    exit();
} else {
    echo "Error: " . $bdd->error;
}

$bdd->close();
?>
