<?php

require_once 'model/managers/PostManager.php';
require_once 'model/managers/CategoryManager.php';

//ici on mettra toute la logique du code
$categories = CategoryManager::getAllCategories();
$posts = PostManager::getAllPosts(); 

//requerir le fichier de vue 
require_once 'views/indexView.php';



