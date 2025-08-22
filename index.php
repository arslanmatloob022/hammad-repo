<?php


$page = isset($_GET['url']) ? $_GET['url'] : "form"; 
$folder = "";
$files = glob($folder . "*.php");
$file_name = $folder .$page.".php";

if (in_array($file_name, $files)) {
    include($file_name);
} else {
    include($folder . "page-error-404.php");
}

?>
