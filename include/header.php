<header class="flex-row">
    <nav class="flex-row">

        <!-- Si aucune Session n'est ouverte -->
        <?php if(!isset($_SESSION['login'])){ ?> 
            <a href="index.php">Accueil</a>
            <a href="inscription.php">Je m'inscris</a>
            <a href="connexion.php">Je me connecte</a>
            <a href="livreor.php">Livre d'or</a>

        <!-- Si une Session user est ouverte -->
        <?php } else{?>
            <a href="profil.php">Modifier mon profil</a>
            <a href="livreor.php">Livre d'or</a>
            <a href="deconnexion.php">Se déconnecter</a>

        <?php } ?>
    </nav>
</header>