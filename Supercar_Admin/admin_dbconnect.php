<?php
$host = "localhost";
// $host = "mysql-site-supercar.alwaysdata.net";
$login = "supcar";
// $login = "435049";
$pass = "";
// $pass = "CDS@h8.jf#L7G3X";
$dbname = "site-supercar_db";

$conn = mysqli_connect($host, $login, $pass, $dbname);

if (!$conn) {
    die("Erreur de connexion à la base de données : " . mysqli_connect_error());
}

mysqli_set_charset($conn, "utf8");
?>
