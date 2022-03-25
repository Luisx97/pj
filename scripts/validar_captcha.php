<?php

    if (isset($_POST)) {
        $captcha_cookie = $_COOKIE['captcha'];
        $captcha_user = $_POST['captcha'];

        if ($captcha_cookie == sha1($captcha_user)) {
            
            header('location: login_admin.php');
            exit();
        }else{
            echo "Captcha Incorrecta!";
        }//Fin del else...
    }//Fin de if isset...
?>