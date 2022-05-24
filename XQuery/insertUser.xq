declare variable $premium external;
declare variable $username external;
declare variable $nick external;
declare variable $email external;
declare variable $contr external;

insert node 
  <usuario premium="{$premium}">
    <username>{$username}</username>
    <nick>{$nick}</nick>
    <email>{$email}</email>
    <contrasena>{$contr}</contrasena>
  </usuario>
as last into //usuarios