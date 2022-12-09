<?php include 'include/connect.php';      //On joint la connexion à la base de donnée ?>

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
        <title>Livre d'Or</title>
    </head>
    <body>
        <header><?php include 'include/header.php' ?></header>

        <main class="flex-row">
            
            <section class="flex-column" id="table-container">

                <!-- Si un utilisateur est connecté, il doit voir le lien -->
                <?php if(isset($_SESSION['login'])){ ?>
                    <a href="commentaire.php" id="mybutton1_a"><button id="mybutton1">Laisser un commentaire</button></a>
                <?php }; ?>

                <div class="flex-column" id="comments-container">
                    <?php 
                        $request1 = $mysqli->query("SELECT * FROM commentaires ORDER BY date DESC");       // On redéfinie la requête pour récupérer la table
                        $comments = $request1->fetch_all();      // On récupère ligne par ligne

                        //On rentre dans la boucle qui va récupérer les commentaires et les dates
                        for($i=0; isset($comments[$i]); $i++){
                            //On rentre dans la boucle qui va récupérer le login en fonction de l'id_user
                            for($j=0; isset($users[$j]); $j++){
                                //Si id === id_user 
                                if($users[$j][0] === $comments[$i][2]){
                                    //On redéfinit le format de la date, et on affiche le commetaire
                                    $dateDB = $comments[$i][3];
                                    $date = date('d-m-Y H:i', strtotime($dateDB));
                                    echo '<p id="post">Posté le ' . $date . 
                                        ' par ' . $users[$j][1] . '</p><br>' . 
                                        '<p id="comment">' . $comments[$i][1] . 
                                        '</p><br><br>';
                                    break;
                                }
                            }
                        }
                    ?>
                </div> 
            </section>
        </main>

        <footer><?php include 'include/footer.php' ?></footer>
    </body>
</html>