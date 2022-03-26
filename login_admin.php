<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <?php
      include ("include/head.php");
    ?>
    <title>Ingresar Administrador | Poder Judicial</title>
    <script>
    $(function() {
        $('#btn_recargar').click(function() {
            document.location.reload('#div_captcha');
            return false;
        }); //Fin de click.function
        $('#btn_iniciar').click(function(e) {
            e.preventDefault();
            var data = $('#frm').serialize();
            $.ajax({
                url: "scripts/validar_captcha.php",
                type: "POST",
                data: data,
                success: function(res) {
                    alert(res);
                } //fin del function(res)...
            }) //Fin del ajax.url.type.data.success...
        }) //Fin de btn_iniciar.click.function...
    }); //Fin de function...
    </script>
    <link rel="stylesheet" href="style.css" />
</head>

<body>
    <div class="container">
        <div>
            <img src="" alt="" />
            <form action="scripts/login_admin.php" id="frm" method="POST">
                <table>
                    <tr>
                        <td>Usuario: </td>
                        <td><input type="text" name="admin_name" id="admin_name"></td>
                    </tr>
                    <tr>
                        <td>Contraseña: </td>
                        <td><input type="password" name="admin_password" id="admin_password"></td>
                    </tr>
                    <tr>
                        <td>Captcha: </td>
                        <td><input type="text" name="captcha"><img src="scripts/captcha.php">
                        </td>
                        <td><button id="btn_recargar">Recargar Captcha</button></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><button type="submit" id="btn_iniciar">Entrar</button></td>
                        <td><input type="button" onclick="history.back()" name="atras" value="Atras"/></td>
                    </tr>
                </table>
            </form>

            <!-- <form name="frm_administrativo" action="scripts/login_admin.php" method="POST">
                <div>
                    <label>Nombre administrador</label><input id="admin_name" name="admin_name" type="text" />
                </div>
                <div>
                    <label>Contraseña<input id="admin_password" name="admin_password" type="password"/>
                    </label>
                </div>
                <div name="div_captcha">
                    <label for="">Captcha: <input id="btn_captcha" name="captcha" type="text" /> <img
                            src="scripts/captcha.php" name="img_captcha">
                        <button id="btn_recargar">Recargar Captcha</button>
                    </label>
                </div>
                <button type="submit" id="btn_iniciar">Entrar</button>
                <input type="button" onclick="history.back()" name="atras" value="Atras" />
            </form> -->
        </div>
    </div>

    <?php
      include ("include/footer.php");
    ?>
</body>

</html>