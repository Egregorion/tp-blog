<?php
require_once './model/DBConnect.php';
require_once './model/classes/User.php';

class UserManager {

    public static function getUserInfos($id){
        $dbh = dbconnect();
        $query = "SELECT * FROM t_user WHERE id_user=:id";
        $stmt = $dbh->prepare($query);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $stmt->setFetchMode(PDO::FETCH_CLASS, 'User');
        $user = $stmt->fetch();
        return $user;
    }

    public static function getAuthorByPostId($id){
        $dbh = dbconnect();
        $query = "SELECT t_user.id_user, pseudo, email FROM t_user JOIN t_post ON t_post.id_user = t_user.id_user WHERE t_post.id_post = :id";
        $stmt = $dbh->prepare($query);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        $stmt->setFetchMode(PDO::FETCH_CLASS, 'User');
        $user = $stmt->fetch();
        return $user;
    }

    public static function addUser(){
        //à construire
    }

    public static function connectUser(){
        //à construire
    }

}