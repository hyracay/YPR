<?php
include("../connection/conne.php");

// Start session if not already started
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

if (!isset($_SESSION['ADMIN'])) {
    header("location:../index.php");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['id'])) {
    $id = mysqli_real_escape_string($conn, $_POST['id']);
    $sql_delete = "DELETE FROM account WHERE id = '$id'";
    if (mysqli_query($conn, $sql_delete)) {
        echo "Success";
    } else {
        echo "Error: " . mysqli_error($conn);
    }
}