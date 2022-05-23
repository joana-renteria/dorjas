declare variable $id external;
declare variable $nombre external;
declare variable $droga external;
declare variable $tipo external;
declare variable $stock external;
declare variable $vendedor external;
declare variable $img external;

insert node 
  <producto idproducto = "{$id}">
    <nombre>{$nombre}</nombre>
    <droga>{$droga}</droga>
    <tipo>{$tipo}</tipo>
    <stock>{$stock}</stock>
    <vendedor>{$vendedor}</vendedor>
    <imagen>{$img}</imagen>
  </producto>
as last into doc("PericoYKetaXML.xml")/productos