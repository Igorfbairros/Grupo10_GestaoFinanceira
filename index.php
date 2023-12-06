<?php
session_start();

$nome = isset($_SERVER["Nome"]) ? " - " + $_SESSION["Nome"] : "";

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="libs/fontawesome-free-6.5.1-web/css/fontawesome.css" rel="stylesheet">
    <link href="libs/fontawesome-free-6.5.1-web/css/brands.css" rel="stylesheet">
    <link href="libs/fontawesome-free-6.5.1-web/css/solid.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lobster">
    <link rel="stylesheet" href="libs/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="css/estilo.css">

    <title>Finanças<?php echo $nome ?></title>
</head>

<body>



    <form class="formulario" method="POST" action="./scripts/login.php">
        <div class="login position-absolute start-50 translate-middle">
            <div class="img">
                <script src="https://unpkg.com/@dotlottie/player-component@latest/dist/dotlottie-player.mjs" type="module"></script>
                <dotlottie-player src="https://lottie.host/913ed878-5e5c-451d-81f4-124955416372/53MieiS0y4.json" background="transparent" speed="1" style="width: 400px; height: 400px;" loop autoplay></dotlottie-player>
            </div>
            <div class="form container">
                <div class="titulologin">
                    <h5 class="h1">Login</h5>
                </div>
                <div class="w-70">
                    <div class="grupologin" >

                        <span class="input-group-text" id="user">
                            <i class="fa-solid fa-user-large"></i>

                            <input type="text" class="form-control"  id="email" name="email" placeholder="E-mail" aria-label="Username" aria-describedby="user">
                        </span>
                    </div>
                    <div class="grupologin">
                        <span class="input-group-text" id="pass">
                        <i class="fa-solid fa-key"></i>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Senha" aria-label="Password" aria-describedby="pass">
                        </span>
                    </div>
                    <button class="btn btn-lg btn-primary" type="submit">Entrar</button>
                    <p class="text-center">Não tem cadastro? <a href="cadastrar.html">Clique aqui.</a></p>
                </div>
            </div>
        </div>
    </form>

    <!-- <div id="principal">
        <div class="recepcao">
            <h2>SEJA BEM-VINDO</h2>
        </div>


        <div class="login">
            <h2>login</h2>
            <form class="formulario" method="POST" action="./scripts/login.php">
                <label for="text">digite seu email:</label>
                <input type="email" name="email" id="email" placeholder="email@exemplo.com"><br>
                <label for="password">digite sua senha:</label>
                <input type="password" name="password" id="password" placeholder="*********"><br>

                <input type="radio" name="lembrar-me" value="lembrar-me">
                <label for="lembrar-me">lembrar-me</label><br>
                <div class="botoes">
                    <input type="submit" value="Entrar">
                    <h3>Cadastre-se</h3>
                    <a href="cadastrar.html"><input type="button" value="Cadastrar"></a>
                </div>

            </form>

        </div>

    </div> -->
</body>

</html>