<?php
  $servername = "localhost";
  $username = "root";
  $password = "root";
  $dbname = "BD_PROYUSER";

  $conn = new mysqli($servername, $username, $password, $dbname);

  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
  //else{
   //die("Conectado") ;
  //}
?>