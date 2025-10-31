<?php
require_once 'admin_dbconnect.php';

if (isset($_POST['id'])) {
    $id = intval($_POST['id']);

    $sql = "DELETE FROM users WHERE id = $id";
    
    if ($conn->query($sql) === TRUE) {
        echo "success";  
    } else {
        echo "Error: " . $conn->error;
    }
}

$conn->close();
?>
