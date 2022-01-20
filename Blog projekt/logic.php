<?php

// server error off
ini_set("display_errors", "off");

// adatbázis kapcsolat megadása
$conn = mysqli_connect("localhost", "root", "", "blog");

// adatbázis kapcsolati hiba
if (!$conn) {
    echo "<h3 class='container bg-dark p-3 text-center text-warning rounded-lg mt-5'>Adatbázis kapcsolati hiba<h3>";
}

// Adatok megjelenítése
$sql = "SELECT * FROM data";
$query = mysqli_query($conn, $sql);

// Új poszt létrehozása
if (isset($_REQUEST['new_post'])) {
    $title = $_REQUEST['title'];
    $content = $_REQUEST['content'];

    $sql = "INSERT INTO data(title, content) VALUES('$title', '$content')";
    mysqli_query($conn, $sql);

    echo $sql;
    header("Location: welcome.php?info=added");

    exit();
}

// Poszt megjelenítése
if (isset($_REQUEST['id'])) {
    $id = $_REQUEST['id'];
    $sql = "SELECT * FROM data WHERE id = $id";
    $query = mysqli_query($conn, $sql);
}

// Poszt törlése
if (isset($_REQUEST['delete'])) {
    $id = $_REQUEST['id'];

    $sql = "DELETE FROM data WHERE id = $id";
    mysqli_query($conn, $sql);

    header("Location: welcome.php");
    exit();
}

// Poszt szerkesztése
if (isset($_REQUEST['update'])) {
    $id = $_REQUEST['id'];
    $title = $_REQUEST['title'];
    $content = $_REQUEST['content'];

    $sql = "UPDATE data SET title = '$title', content = '$content' WHERE id = $id";
    mysqli_query($conn, $sql);

    header("Location: welcome.php");
    exit();
}
