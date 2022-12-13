<?php include 'include/connect.php';    //On joint la connexion à la base de donnée


    if($_SESSION['login'] === NULL){
            header('location: index.php');
    } ?>


<?php 
    $msgError = "";         //Création de la variable qui contiendra le message d'erreur du mdp

    if ($_POST != NULL){
        $commentaire=htmlspecialchars($_POST['commentaire']);   // On récupère le login saisi
        $idUser = $_SESSION['id_user'];                         // On attribut le $_SESSION['id_user'] pour simplifier les requêtes SQL
        date_default_timezone_set('Europe/Paris');              //On définit le timezone pour avoir le bon fuseau d'horaire
        $date = date('Y-m-d H:i:s');  
        // On récupère la date et l'heure

        //var_dump($_POST);
        //var_dump($_SESSION);
        
        // Si le champ de commentaire n'est pas vide, et qu'il fait plus de 10 caractères on l'ajoute à la base de donnée
        if($commentaire !== "" && strlen($commentaire) > 10){
            $request = $mysqli->query("INSERT INTO `commentaires`(`commentaire`, `id_utilisateur`, `date`) VALUES ('$commentaire', '$idUser', '$date')");
            header("location: livreor.php");
        }
        // Sinon messqge d'erreur
        else{
            $msgError = "<p id='msgerror'>Votre message doit contenir 10 caractères au minimum.</p>";
        }
    }
?>

<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/f18b510552.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Sahitya:wght@700&family=Trirong:wght@600&family=Trykker&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
        <title>Laisser un commentaire</title>
    </head>
    <body>
        <header><?php include 'include/header.php' ?></header>

        <main class="flex-row">
            <div class="flex-row" id="form-container">
                <form action="" Method="POST" class="flex-column">

                    <label for="commentaire">Commentaire</label>
                    <textarea name="commentaire" id="commentaire" cols="30" rows="10" placeholder="Ecrivez votre message..."></textarea>

                    <input type="submit" id="mybutton" value="Poster">
                    <?php echo $msgError; ?>          <!-- Le message sera affiché en cas derreur -->
                   
                    
                </form>
            </div>
        </main>

        <footer><?php include 'include/footer.php' ?></footer>
    </body>
</html>