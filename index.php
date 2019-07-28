<?php
session_start();
ini_set ('display_errors', 1);
error_reporting (E_ALL | E_STRICT);
include 'connection.php';

$err = array();

if (isset($_POST['doLogin'])=='Login')
{
    global $conn;

    $user=$_POST['username'];
    /*$pass=md5($_POST['password']);*/
    $pass=$_POST['password'];


    $result = $conn->query("SELECT userID,username,password,roleID,status from brcx_user where username='$user'") or die (mysqli_error($conn)); 
    $num = $result->num_rows;
        if ( $num > 0 ) 
        { 
            list($userID,$username,$password,$roleID,$status) = $result->fetch_row();
            
            if($status==0) {
            $err[] = "You Blocked From the System,Contact System Administrator";
            }

          if($password == $pass)
          {
            if(empty($err))
            {
                $sqlquery2=$conn->query("select roleName from brcx_role where roleID='$roleID'")or die(mysqli_error($conn));
                list($roleName)=$sqlquery2->fetch_row();
                $_SESSION['userID']= $userID;  
                $_SESSION['roleName'] = $roleName;
                $_SESSION['roleID'] = $roleID;
                header("Location:index2.php"); 
            }
        }
        else
        {
            $err[] = "Invalid Login. Please try again with correct user email and password.";
        }    
        
    }
    else
    {
        $err[] = "Error - Invalid login. No such user exists";
    }
}     
?>


<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Login</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-10 col-lg-12 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              <div class="col-lg-6">
                
              Bienvenue Aux COMORES!

              Business Registration System vous offre la facilite pour inscrire votre Business.
              Business Registration System permet aux entrepreneurs locaux
              et internationaux dinscrire leur business aux COMORES.

              </div>
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                  </div>
                  <div class="row bg-danger alert-danger text-center " >
                    <?php

                    /******************** ERROR MESSAGES*************************************************
                    This code is to show error messages 
                    **************************************************************************/
                    if(!empty($err))  {
                     echo "<div class=\"msg\">";
                    foreach ($err as $e) {
                      echo "$e <br>";
                      }
                    echo "</div>";  
                     }
                    /******************************* END ********************************/    
                    ?>
                </div>
                  <form class="user" action="" method="POST">
                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" name="username" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Username">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" name="password" id="exampleInputPassword" placeholder="Password">
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                    <input type="submit" name="doLogin" value="Login" class="btn btn-primary btn-block">
                    <!-- <a href="index.html" class="btn btn-primary btn-user btn-block">
                      Login
                    </a> -->
                    
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="register.html">Create an Account!</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
