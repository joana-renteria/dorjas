<html>
    <head>
        <meta http-equiv="refresh" content="0; url=../tienda/registrar.html">
    </head>
</html>

<?php

require_once("../basex/BDConexion.php");

try{

$rutaXQuery = "../XQuery/insertUser.xq";
$fichero = fopen($rutaXQuery, "r");
$xQuery = fread($fichero, filesize($rutaXQuery));
fclose($fichero);

$session = new Session();

$session->execute("open dorjas");

$query = $session->query($xQuery);

//Declaramos las variables   
$usuario=$_GET['usuario'];
$nick=$_GET['nick'];
$email=$_GET['email'];
$passwd=$_GET['password'];
if(isset($_GET['premium'])){
    $premium='S';
} else {
    $premium='N';
}

$query->bind('$premium', $premium);
$query->bind('$username', $usuario);
$query->bind('$nick', $nick);
$query->bind('$email', $email);
$query->bind('$contr', $passwd);

$result = $query->execute();

$query->close();

$session->close();

} catch (Exception $e) {
    echo $e->getMessage();
}

?>