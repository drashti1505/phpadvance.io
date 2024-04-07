<?php
require_once("conn.php");

if(isset($_POST["login_btn"]))
{
    $em=$_POST["email"];
    $pass=$_POST["password"];
    $select ="select *from adminpanel where email='$em' and password='$pass'";
    $query=mysqli_query($con,$select);
    $num_rows=mysqli_num_rows($query);
//   $fetch=mysqlli_fetch_array($query);
   if($num_rows==1)
   {
    //   $_SESSION["id"]=$fetch["id"];
      $_SESSION["email"]=$em;
      echo "<script>
         alert('You are logged in admin successfully')
         window.location='index.php';
      </script>";
    
   }
   else{
    echo "<script>
         alert('You email amd password are wrong try agin')
         window.location='login1.php';
      </script>";
    

   }


}
?>