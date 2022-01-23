<?php

$conn = mysqli_connect('localhost', 'root', '', 'locatar');

if (mysqli_connect_errno()) {
    echo "1";
    exit();
}


$username = $_POST['username'];
$password = $_POST['password'];


//username ase naki check korar jonno
$unamecheckquery = "SELECT username, password FROM user WHERE username = '" . $username . "'";
$unamecheck = mysqli_query($conn, $unamecheckquery) or die("2");
if (mysqli_num_rows($unamecheck) != 1)
{
    echo "5";
    exit();
}

//getting login info
$logininfo = mysqli_fetch_assoc($unamecheck);
$cpassword = $logininfo["password"];

if($password != $cpassword)
{
    echo "Incorrect password";
}

echo "0";
?>