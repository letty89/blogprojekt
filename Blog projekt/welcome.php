<?php

session_start();

if (!isset($_SESSION['username'])) {
    header("Location: login.php");
}
include "logic.php";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Főoldal</title>
    <link rel="stylesheet" href="style4.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>

<body>
    <div class="container-fluid">
        <div class="text-end">
            <a href="logout.php" class="btn btn-light">Kilépés</a>
        </div>

        <div class="text-white">
            <?php echo "<h1>Üdv" . ", " . $_SESSION['username'] . "!" .  "</h1>"; ?>
        </div>


        <?php if (isset($_REQUEST['info'])) { ?>
            <?php if ($_REQUEST['info'] == "added") { ?>
                <div class="alert alert-success" role="alert">
                    A poszt feltöltésre került.
                </div>
            <?php } ?>
        <?php } ?>

        <!-- Új poszt gomb -->
        <div class="container-fluid mt-3">
            <div class="text-center">
                <a href="create.php" class="btn btn-light btn-lg">+ Új poszt írása</a>
            </div>
        </div>

        <!-- Posztok mutatása az adatbázisból-->
        <div class="row">
            <?php foreach ($query as $q) { ?>
                <div class="col-12 col-lg-4 d-flex justify-content-center">
                    <div class="card border-light text-white bg-transparent mt-4" style="width: 30rem;">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $q['title']; ?></h5>
                            <p class="card-text"><?php echo substr($q['content'], 0, 50); ?>...</p>
                            <a href="view.php?id=<?php echo $q['id'] ?>" class="btn btn-light">Tovább olvasom <span class="text-danger">&rarr;</span></a>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
    </div>

</body>

</html>