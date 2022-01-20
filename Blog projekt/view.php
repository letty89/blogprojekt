<?php

include "logic.php";
error_reporting(0);

if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $comment = $_POST['comment'];

    $sql = "INSERT INTO comments (name, email, comment)
			VALUES ('$name', '$email', '$comment')";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        echo "<script>alert('A hozzászólást megjelenítettük.')</script>";
    } else {
        echo "<script>alert('A hozzászólást nem sikerült megjeleníteni.')</script>";
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style4.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>


<body>

    <div class="container-fluid">
        <?php foreach ($query as $q) { ?>
            <div class="justify-content-center">
                <div class="wrapper text-white bg-transparent mt-5">
                    <div class="card-body">
                        <h5><?php echo $q['title']; ?></h5>
                        <p><?php echo substr($q['content'], 0, 10000); ?></p>
                    </div>
                </div>
            </div>
            <div>
                <a href="edit.php" class="btn btn-outline-light my-3">Poszt frissítése/törlése</a>
            </div>

        <?php } ?>


        <div class="wrapper">
            <form action="" method="POST" class="form">
                <div class="mb-3 row text-white">
                    <label for="name" class="col-sm-2 col-form-label">Név</label>
                    <div class="col-sm-10">
                        <input type="text" name="name" id="name" class="form-control my-1 bg-dark text-white text-center" placeholder="Add meg a neved" required>
                    </div>
                </div>
                <div class="input-group text-white">
                    <label for="email" class="col-sm-2 col-form-label">E-mail</label>
                    <div class="col-sm-10">
                        <input type="email" name="email" id="email" class="form-control my-1 bg-dark text-white text-center" placeholder="Írd be az e-mail címed" required>
                    </div>
                </div>
                <div class="input-group text-white">
                    <label for="comment" class="col-sm-2 col-form-label">Vélemény</label>
                    <textarea id="comment" name="comment" class="form-control my-1 bg-dark text-white" placeholder="Vélemény írása" required></textarea>
                </div>
        </div>

        <div class="text-end">
            <button name="submit" class="btn btn-outline-light my-3 pr-3">Vélemény hozzáadása</button>
        </div>

        <div class="text-center">
            <a href="welcome.php" class="btn btn-outline-light btn-lg my-3 mt-5">Vissza a főoldalra</a>
        </div>
        </form>

        <div class="prev-comments text-white">
            <?php

            $sql = "SELECT * FROM comments";
            $result = mysqli_query($conn, $sql);
            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {

            ?>
                    <div class="single-item border border-white mb-2">
                        <h4><?php echo $row['name']; ?></h4>
                        <a href="mailto:<?php echo $row['email']; ?>"><?php echo $row['email']; ?></a>
                        <p><?php echo $row['comment']; ?></p>
                    </div>
            <?php

                }
            }

            ?>

        </div>
    </div>
    </div>

</body>

</html>