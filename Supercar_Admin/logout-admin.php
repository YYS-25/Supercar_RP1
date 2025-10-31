<?php
session_name('supercar_admin_session');
session_start();

$_SESSION = [];
session_unset();
session_destroy();

header("Location: login-admin.php");
exit;
?>
