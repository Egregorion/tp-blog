<?php 
//le rôle du manager étant d'interagir avec la bdd, c'est ici que l'on va récupérer le fichier qui contient la fonction correspondante
require_once './model/DBConnect.php';
//nous allons transcrire les données récupérées sous la forme d'objets de la classe Post, nous devons donc inclure le fichier correspondant  
require_once './model/classes/Post.php';

class PostManager {

    //on va ensuite définir différentes méthodes très ciblées 
    public static function getAllPosts() { //pour récupérer tous les articles
        $dbh = dbconnect(); //on récupère notre objet PDO
        $query = ("SELECT * FROM t_post"); //on écrit notre requête SQL
        $stmt = $dbh->prepare($query); //on prépare la requête
        $stmt->execute();//on l'execute 
        $posts = $stmt->fetchAll(PDO::FETCH_CLASS, 'Post');//on transcris les résultats en objets de la class Post 
        return $posts;//puis on renvoie les résultats
    }

    public static function getPostById($id) {
        $dbh = dbconnect();
        $query = ("SELECT * FROM t_post WHERE id_post = :id");
        $stmt = $dbh->prepare($query);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $stmt->setFetchMode(PDO::FETCH_CLASS, 'Post');
        $post = $stmt->fetch();
        return $post;
    }
    
}