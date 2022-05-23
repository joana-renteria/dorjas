declare variable $username external;

delete node 
doc("PericoYKetaXML.xml")//usuario[username="{$username}"]