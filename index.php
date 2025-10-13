<!-- This is the default page opened by alwaysdata -->
<!-- This page redirects users to the page according to the language they use -->

<?php
// Example: redirect user by language
$lang = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);
if ($lang == 'fr') {
    header("Location: index-fr.php");
} else {
    header("Location: index-en.php");
}
exit;
?>
