<?php

  // started the script with phpmyadmin connection
  $conn = mysqli_connect('localhost', 'root', '', 'locatar');
  //check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  //ekta select query banaisi and assigned it to a variable and returned the result
  $sql = "SELECT id, title, latitude, longitude, description,	subtitle,	fblink,	weblink,	number FROM go_data";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
    //output data of each row
    $rows = array();
    while($row = $result->fetch_assoc()) {
      $rows[] = $row;
    }
    echo json_encode($rows);
  } else {
    echo "0 results";
  }
  $conn->close();

?>