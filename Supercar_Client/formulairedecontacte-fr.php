<?php 
session_start();
include 'dbconnect.php';

$first_name = $_POST["first_name"];
$last_name = $_POST["last_name"];
$email = $_POST["email"];
$phone = $_POST["phone"];
$comment = $_POST["comment"];
$user_id = $_SESSION['user_id'] ?? 'NULL'; //if logged in, get user_id, else NULL

// Sanitize inputs
$first_name = mysqli_real_escape_string($bdd, $first_name);
$last_name  = mysqli_real_escape_string($bdd, $last_name);
$email      = mysqli_real_escape_string($bdd, $email);
$phone      = mysqli_real_escape_string($bdd, $phone);
$comment    = mysqli_real_escape_string($bdd, $comment);

$ajouter = "INSERT INTO table_de_contacte (first_name, last_name, email, phone, comment, user_id) 
            VALUES ('$first_name', '$last_name', '$email', '$phone', '$comment', " . ($user_id === 'NULL' ? 'NULL' : (int)$user_id) . ")"; //Cast user_id to int if not NULL

if (mysqli_query($bdd, $ajouter)) {
    echo "
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            let messageBox = document.createElement('div');
            messageBox.innerText = '✅ Votre message a été envoyé!';
            messageBox.style.position = 'fixed';
            messageBox.style.top = '50%';
            messageBox.style.left = '50%';
            messageBox.style.transform = 'translate(-50%, -50%)';
            messageBox.style.padding = '15px 30px';
            messageBox.style.background = 'rgba(0, 0, 0, 0.8)';
            messageBox.style.color = 'white';
            messageBox.style.borderRadius = '10px';
            messageBox.style.fontSize = '16px';
            messageBox.style.zIndex = '9999';
            document.body.appendChild(messageBox);

            setTimeout(function() {
                window.location.href = 'index-fr.php';
            }, 3000);
        });
    </script>";
} else {
    echo "Erreur: " . mysqli_error($bdd);
}

    mysqli_close($bdd);
?>

