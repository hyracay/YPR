<?php

session_start();
include("../connection/conne.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id = mysqli_real_escape_string($conn, $_POST['id']);
    $delete_sql = "DELETE FROM delete_profile WHERE id = '$id'";
    if (mysqli_query($conn, $delete_sql)) {
        echo "Success";
    } else {
        echo "Error: " . mysqli_error($conn);
    }
}