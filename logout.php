<?php
 session_start();
 unset($_SESSION["email"]);
 session_destroy();
 echo "<script>
 alert('you are successfully logout as admin');
 window.location='login1.php';
 
 </script>";
?>