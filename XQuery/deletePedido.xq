declare variable $pedido external;

delete node 
doc("PericoYKetaXML.xml")//pedido[@idped = "{$pedido}"]