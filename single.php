<?php 

require_once 'model/managers/PostManager.php';
require_once 'model/managers/CategoryManager.php';

if(isset($_GET['id'])&&!empty($_GET['id'])){
    $id = $_GET['id'];
    $post = PostManager::getPostById($id);
    $post_categories = CategoryManager::getCategoriesByPostId($id);
}

$categories = CategoryManager::getAllCategories();

require_once 'views/singleView.php';