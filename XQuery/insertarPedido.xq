declare variable $id external;
declare variable $username external;
declare variable $idproducto external;
declare variable $fechaped external;
declare variable $dirped external;
declare variable $importe external;

insert node 
  <pedido idped = "{$id}">
    <username>{$username}</username>
    <lineaprod>
      <idproducto>{$idproducto}</idproducto>
    </lineaprod>
    <fechaped>{$fechaped}</fechaped>
    <dirped>{$dirped}</dirped>
    <importe>{$importe}</importe>
  </pedido>
as last into doc("PericoYKetaXML.xml")/pedidos