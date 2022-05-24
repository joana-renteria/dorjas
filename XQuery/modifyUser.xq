declare variable $username external;
declare variable $contr external;

replace value of node
//usuario[username=$username]/contrasena
with $contr