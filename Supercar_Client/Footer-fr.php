<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footer</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="Footer.css" type="text/css" />

</head>
<body>

<!-- Footer -->
    <footer>
        <p>&copy; 2025 Supercar. Tous droits réservés.</p>
        <a href="https://www.facebook.com/" target="_blank" class="fab fa-facebook" style="margin: 0 10px;"></a>
        <a href="https://x.com/i/flow/login" target="_blank" class="fab fa-twitter" style=" margin: 0 10px;"></a>
        <a href="https://www.instagram.com/accounts/login/" target="_blank" class="fab fa-instagram" style=" margin: 0 10px;"></a>
        <a href="mailto:contact@supercarweb.com" class="fa-solid fa-envelope" style=" margin: 0 10px;"></a>
        <a href="#top" id="scrollToTop" class="fa-solid fa-arrow-up"></a>
        <br><br>
        <small>
            This website is a school project for educational purposes only.  
            All data and content are fictional. <br>
            Ce site est un projet scolaire à des fins pédagogiques - données et contenus fictifs.
        </small>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        document.getElementById("scrollToTop").addEventListener("click", function (e) {
            e.preventDefault();
            window.scrollTo({
                top: 0,
                behavior: "smooth"
            });
        });
    </script>
</body>
</html>
