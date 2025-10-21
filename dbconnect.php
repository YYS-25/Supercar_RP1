<?php
$host = "localhost";
$login = "supcar";
$pass = "";
$dbname = "site-supercar_db";

$bdd = mysqli_connect($host, $login, $pass, $dbname);

if (!$bdd) {
    die("Erreur de connexion à la base de données : " . mysqli_connect_error());
}

mysqli_set_charset($bdd, "utf8");
?>
