<?php

require_once 'model/managers/UserManager.php';
//reception des données du formulaire
if(isset($_POST)&&!empty($_POST)){
    var_dump($_POST);
    //récupération des données de l'utilisateur via une valeur unique telle que le mail
    //UserManager::getUserByEmail(), à contruire
    //vérification de la correspondance du mdp en bdd avec celui saisi par l'utilisateur
    //UserManager::connectUser(); à construire
}

require_once 'views/loginView.php';