<?php
    $db = require("./dbConnection.php");
       
    $nome = $_POST['formGroupExampleInput'];
    $email = $_POST['formGroupExampleInput2'];
    $senha = $_POST['formGroupExampleInput3'];
    $senhavalidar = $_POST['formGroupExampleInput4'];
    $baseUrl = $_SERVER["HTTP_HOST"];
    
    if (isset ($senha)){
        $senhaCriptografada = sha1($senha);
        $qtdLetras = strlen($senhaCriptografada);
    
        $query = "INSERT INTO usuarios (nome, email, senha) VALUES ('$nome', '$email', '$senhaCriptografada')";
        
        if($db->query($query)) {
            header("Location: http://$baseUrl/index.php?s=1");
            echo "Registro Realizado com sucesso";
        }else {
            echo "Error: " . $query . "<br>" . $conn->error;
        }
    
    }


   
    $db->close();
?>