<html>
    <head>
        <meta http-equiv="refresh" content="0; url=../tienda/baja.html">
    </head>
</html>

<?php

require_once("../basex/BDConexion.php");

try{

$rutaXQuery = "../XQuery/deleteUser.xq";
$fichero = fopen($rutaXQuery, "r");
$xQuery = fread($fichero, filesize($rutaXQuery));
fclose($fichero);

$session = new Session();

$session->execute("open dorjas");

$query = $session->query($xQuery);

//Declaramos las variables   
$usuario=$_GET['usuario'];

$query->bind('$username', $usuario);

$result = $query->execute();

$query->close();

$session->close();

} catch (Exception $e) {
    echo $e->getMessage();
}

?>