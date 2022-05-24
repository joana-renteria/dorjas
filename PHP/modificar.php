<html>
    <head>
        <meta http-equiv="refresh" content="0; url=../tienda/modificar.html">
    </head>
</html>

<?php

require_once("../basex/BDConexion.php");

try{

$rutaXQuery = "../XQuery/modifyUser.xq";
$fichero = fopen($rutaXQuery, "r");
$xQuery = fread($fichero, filesize($rutaXQuery));
fclose($fichero);

$session = new Session();

$session->execute("open dorjas");

$query = $session->query($xQuery);

//Declaramos las variables   
$usuario=$_GET['usuario'];
$pass=$_GET['pass'];

$query->bind('$username', $usuario);
$query->bind('$contr', $pass);

$result = $query->execute();

$query->close();

$session->close();

} catch (Exception $e) {
    echo $e->getMessage();
}

?>