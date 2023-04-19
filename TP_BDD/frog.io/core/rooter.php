<?php
$page = 'index.php';
if (isset($_GET['page'])) {
    switch ($_GET['page']) {
        case "grenouille":
            $page = "grenouille.php";
            break;
        default:
            break;
    }
}

include_once("./pages/" . $page);
