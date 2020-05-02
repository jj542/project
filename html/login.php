<?php
    $email = $_POST['uname'];
    $passwrd = $_POST['psw'];
    include 'connection.php';
    $sql = "SELECT * FROM students where username = '".$email."' and password = '".$passwrd."'";
    if($result = mysqli_query($conn, $sql)){
      $res = mysqli_num_rows($result);
      if($res  > 0 ){
        while($row = mysqli_fetch_assoc($result)){
         $id = $row['id'];
         echo "ID:".$id."<br/>";
         echo "First Name:".$row['first_name']."<br/>";
         echo "Last Name:".$row['last_name']."<br/>";
         echo "Username:".$row['username']."<br/>";
         echo "Password".$row['password']."<br/>";
         $sql2 = "SELECT * FROM grades WHERE id = $id";
         $result2 = mysqli_query($conn, $sql2);
         $bal = mysqli_fetch_assoc($result2);
         echo "Grade". $bal['Gym_Grade']."<br/>";
        }
      }
      else{
         echo "Failed";
      }
    }
    $conn->close();
?>
