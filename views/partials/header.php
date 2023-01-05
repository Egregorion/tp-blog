<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <nav class="navbar navbar-dark navbar-expand-lg bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="./">Mon Super Blog</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Catégories
                        </a>
                        <ul class="dropdown-menu">
                            <?php foreach($categories as $category){ ?>
                                <li><a class="dropdown-item" href="category.php?id=<?php echo $category->getIdCategory() ?>"><?php echo $category->getCategoryName() ?></a></li>
                            <?php } ?>
                        </ul>
                    </li>
                    <?php if($_SESSION['user']){ ?>
                        <li class="nav-item">
                            <a class="nav-link" href="logout.php">Se déconnecter</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="addpost.php">Ecrire un article</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="addcategory.php">Ajouter une catégorie</a>
                        </li>
                    <?php } else { ?>
                    <li class="nav-item">
                        <a class="nav-link" href="signup.php">S'inscrire</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.php">Se connecter</a>
                    </li>
                    <?php } ?>
                </ul>
            </div>
        </div>
    </nav>
    <?php if($_GET['status']&&$_GET['message']){?>
        <div class="container">
            <div class="alert alert-<?php echo $_GET['status'] ?> alert-dismissible fade show mt-2" role="alert">
                <?php echo $_GET['message'] ?>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
    </div>
    <?php } ?>

    
