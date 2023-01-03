<?php

require_once 'model/managers/UserManager.php';
//reception des données du formulaire
if(isset($_POST)&&!empty($_POST)){
    var_dump($_POST);
    //sanitisation des données et chiffrement du mot de passe
    //transmission à une méthode du manager pour enregistrer en bdd 
    //UserManager::addUser(); à construire
    //UserManager::connectUser(); à construire
}

require_once 'views/signinView.php';