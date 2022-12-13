<?php 
    session_start(); // On ouvre la session, le 'include' doit être présent sur chaque pages en première ligne


    $mysqli = new mysqli('localhost', 'root', '', 'livreor');   // On se connecte à la BDD EN LOCAL
    //$mysqli = new mysqli('localhost', 'padawana', 'Bonj@ur123', 'fabien-ricca_livreor');   // On se connecte à la BDD sur Plesk
    $request = $mysqli->query("SELECT * FROM utilisateurs");       // On lance la requête pour récupérer la table
    $users = $request->fetch_all();

    $loginAdmin = "admin";
?>