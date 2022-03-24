<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Ingresar Administrador | Poder Judicial</title>
    <link rel="stylesheet" href="style.css" />
</head>

<body>
    <div class="container">
        <div>
            <img src="" alt="" />
            <form action="scripts/login_admin.php" method="post">
                <div>
                    <label for="">Nombre administrador</label><input id="admin_name" name="admin_name" type="text" />
                </div>
                <div>
                    <label for="">Contraseña<input id="admin_password" name="admin_password" type="password"
                            required /></label>
                </div>
                <button type="submit">Entrar</button>
                <input type="button" onclick="history.back()" name="atras" value="Atras" />
            </form>
        </div>
    </div>
    <div>
        <p>@2022 Poder Judicial | Proyecto Final</p>
    </div>
</body>

</html>