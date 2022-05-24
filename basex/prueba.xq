for $car in /universidad/carreras/carrera
let $id := $car/@id
return
  <carrera>
   {$car/nombre}
    <alumnos>
      {
	  for $alumno in /universidad/alumnos/alumno[estudios/carrera/@codigo=$id]
      return 
        <alumno>{data($alumno/nombre)}&#32;{data($alumno/apellido1)}&#32;{data($alumno/apellido2)}</alumno>
      }
    </alumnos>
  </carrera>