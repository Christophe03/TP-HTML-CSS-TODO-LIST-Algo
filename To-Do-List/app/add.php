<?php

if(isset($_POST['nom'])){
    require '../bd_connect.php';

    $nom = $_POST['nom'];
    
    if(empty($nom)){
        header("Location: ../index.php?mess=error");
    }else {
        $stmt = $conn->prepare("INSERT INTO todo(nom) VALUE(?)");
        $res = $stmt->execute([$nom]);

        if($res){
            header("Location: ../index.php?mess=success");
        }else{
            header("Location: ../index.php");
        }
        $conn = null;
        exit();
    }
}else{
header("Location: ../index.php?mess=error");
}