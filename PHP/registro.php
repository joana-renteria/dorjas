<?php

try{

$rutaXQuery = "../XQuery/insertUser.xq";
$fichero = fopen($rutaXQuery, "r");
$xQuery = fread($fichero, filesize($rutaXq));
fclose($fichero);

$session = new Session();

$session->execute("open PerikoYKeta");

$query = $session->query($xq);

//Declaramos las variables   
if(isset($_GET['premium'])){
    $premium='S';
} else {
    $premium='N';
}
$usuario=$_GET['usuario'];
$nick=$_GET['nick'];
$email=$_GET['email'];
$passwd=$_GET['password'];

$query->bind('$premium', $premium);
$query->bind('$usuario', $usuario);
$query->bind('$nick', $nick);
$query->bind('$email', $email);
$query->bind('$password', $passwd);

$result = $query->execute();

$query->close();

$session->close();

} catch (Exception $e) {
    echo $e->getMessage();
}

?>