<?php

include "logic.php";

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style4.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Csillagászok Blogja</title>
</head>

<body>

    <div class="container-fluid mt-15">
        <?php foreach ($query as $q) { ?>
            <form method="POST">
                <input type="text" hidden value='<?php echo $q['id'] ?>' name="id">
                <input type="text" placeholder="Blog Title" class="form-control my-3 bg-secondary text-white text-center" name="title" value="<?php echo $q['title'] ?>">
                <textarea name="content" class="form-control my-3 bg-secondary text-white" cols="30" rows="10"><?php echo $q['content'] ?></textarea>
                <button class="btn btn-outline-light" name="update">Frissítés</button>
                <input type="text" hidden value='<?php echo $q['id'] ?>' name="id">
                <button class="btn btn-danger" name="delete">Törlés</button>
                <div class="text-end">
                    <a href="welcome.php" class="btn btn-outline-light">Vissza a főoldalra</a>
                </div>
            </form>
        <?php } ?>
    </div>
</body>

</html>