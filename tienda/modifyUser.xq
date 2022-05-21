declare variable $premium external;
declare variable $username external;
declare variable $nick external;
declare variable $email external;
declare variable $contr external;

replace value of node
doc("PericoYKetaXML.xml")//usuario[username="{$username}"]/@premium
with $premium,

replace value of node
doc("PericoYKetaXML.xml")//usuario[username="{$username}"]/username
with $username,

replace value of node
doc("PericoYKetaXML.xml")//usuario[username="{$username}"]/nick
with $nick,

replace value of node
doc("PericoYKetaXML.xml")//usuario[username="{$username}"]/email
with $email,

replace value of node
doc("PericoYKetaXML.xml")//usuario[username="{$username}"]/contrasena
with $contr