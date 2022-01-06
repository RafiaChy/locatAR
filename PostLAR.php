<?php

$conn = mysqli_connect('localhost', 'root', '', 'locatar');

if (mysqli_connect_errno()) {
    echo "1";
    exit();
}

$title = $_POST["title"];
$latitude = $_POST["latitude"];
$longitutde = $_POST["longitude"];
$description = $_POST["description"];
$subtitle = $_POST["subtitle"];
$fblink = $_POST["fblink"];
$weblink = $_POST["weblink"];
$number = $_POST["number"];

$titlecheckquery = "SELECT title FROM go_data WHERE title='" . $title . "';";
$titlecheck = mysqli_query($conn, $titlecheckquery) or die("2");

if (mysqli_num_rows($titlecheck) > 0) {
    echo "3";
    exit();
}

$insertquery = "INSERT INTO go_data (title, latitude, longitude, description, subtitle, fblink, weblink, number) VALUES ('" . $title . "', '" . $latitude . "', '" . $longitutde . "', '" . $description . "', '" . $subtitle . "', '" . $fblink . "', '" . $weblink . "', '" . $number . "');";
mysqli_query($conn, $insertquery) or die("4");

echo ("success");

?>