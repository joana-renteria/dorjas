declare variable $id external;
declare variable $importe external;

replace value of node
doc("PericoYKetaXML.xml")//pedido[@idped="{$id}"]/importe
with $importe