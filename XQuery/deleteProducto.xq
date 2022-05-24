declare variable $producto external;

delete node 
doc("PericoYKetaXML.xml")//producto[@idproducto = "{$producto}"]