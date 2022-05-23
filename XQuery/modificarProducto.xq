declare variable $id external;
declare variable $stock external;

replace value of node
doc("PericoYKetaXML.xml")//producto[@idproducto="{$id}"]/stock
with $stock