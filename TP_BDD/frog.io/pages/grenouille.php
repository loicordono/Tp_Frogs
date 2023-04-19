<h2 class="text-center">Bienvenue sur la page des Grenouilles!</h2>

<?php

$dsn = "mysql:dbname=frogs;host=localhost";
$user = "root";
$psw = "root";

class Frogs
{
    public $id_grenouille;
    public $nom_scientifique;
    public $taille;
    public $altitude;
    public $image;
    public $id_famille;
    public $id_statut;
}
try {
    $connect = new PDO($dsn, $user, $psw);
} catch (PDOException $e) {
    die($e->getMessage());
}

$sql = 'select * from grenouille';
$objt = $connect->query($sql);

$results = $objt->fetchAll(PDO::FETCH_CLASS, 'Frogs');
echo '<pre>';
var_dump($results);
echo '</pre>';