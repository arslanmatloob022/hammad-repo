<?php
session_start();
require_once 'config.php';

if (isset($_GET['id'])) {
    $id = mysqli_real_escape_string($conn, $_GET['id']);
    
    // Delete the record from the database
    $sql = mysqli_query($conn, "DELETE FROM `form` WHERE `id`='$id'");
    
    if ($sql) {
        $_SESSION["success"] = "Record has been deleted successfully.";
    } else {
        $_SESSION["error"] = "Something went wrong while deleting the record.";
    }
} else {
    $_SESSION["error"] = "Invalid request.";
}

header('Location: form'); // Redirect back to the form or listing page
exit;
?>
