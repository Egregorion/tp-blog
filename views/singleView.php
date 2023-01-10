<?php 
require_once 'partials/header.php';
?>

<section id="hero">
    <img src="assets/uploads/<?php echo $post->getPicture() ?>" class="img-fluid heroImg" alt="">
</section>

<section id="main" class="container">
    <h1 class="text-center"><?php echo $post->getTitle() ?></h1>
    <?php if(isset($_SESSION['user'])&& $_SESSION['user']['id'] === $author->getIdUser()){ ?>
        <div class="d-flex justify-content-end">
            <a href="editpost.php?id=<?php echo $post->getIdPost() ?>" class="btn btn-primary"><i class="bi bi-pencil-square"></i></a>
            <a href="deletepost.php?id=<?php echo $post->getIdPost() ?>" class="btn btn-danger"><i class="bi bi-trash3-fill"></i></a>
        </div>
    <?php } ?>
    <div id="categories">
        <?php foreach($post_categories as $post_category){ ?>
            <a href="category.php?id=<?php echo $post_category->getIdCategory() ?>" class="badge rounded-pill text-bg-primary"><?php echo $post_category->getCategoryName() ?></a>
        <?php } ?>
    </div>
    By <a href="author.php?id=<?php echo $author->getIdUser() ?>" id="author" class="muted"><?php echo $author->getPseudo() ?></a>
    <p class="mt-3"><?php echo $post->getContent() ?></p>

    <div class="badge bg-primary mb-3">
        Commentaires <span class="badge text-bg-secondary"><?php echo count($comments) ?></span>
    </div>
    <?php foreach($comments as $comment) { 
    $commentAuthor = UserManager::getCommentAuthorByCommentId($comment->getIdComment());?>
        <div>
            <h3><?php echo $commentAuthor->getPseudo() ?></h3>
            <span><?php echo $comment->getDate() ?></span>
            <p><?php echo $comment->getContent() ?></p>
        </div>
    <?php } ?>

    <?php if(isset($_SESSION['user'])){ ?>
    <div id="addcomment">
        <form action="" method="post">
            <div class="mb-3">
                <label for="InputContent" class="form-label">Commenter</label>
                <textarea class="form-control" id="InputContent" name="content"></textarea>
            </div>
            <button class="btn btn-primary mt-3" type="submit">Soumettre le commentaire</button>
        </form>
    </div>
    <?php } ?>

</section>

<?php
require_once 'partials/footer.php';
?>