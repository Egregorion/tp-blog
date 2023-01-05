<?php 
require_once 'partials/header.php';
require_once 'partials/animation.php';
?>
<section id="homepage" class="pt-2">
    <h1 class="text-center mt-5">Bienvenue sur mon blog à propos de mes mangas préférés</h1>
    <div class="container mt-5">
        <div class="row">
            <?php foreach($posts as $post) { ?>
                <div class="card col-12 col-md-4 col-lg-3">
                    <img src="assets/uploads/<?php echo $post->getPicture() ?>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $post->getTitle() ?></h5>
                        <a href="single.php?id=<?php echo $post->getIdPost() ?>" class="btn btn-primary">Voir l'article</a>
                    </div>
                </div>
            <?php } ?> 
        </div>
    </div>
</section>
<?php
require_once 'partials/footer.php';
?>