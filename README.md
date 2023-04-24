# Utilizando las funciones de fechas (Date functions) de SQL Server

Los cálculos con fecha son comunes en la mayoría de las aplicaciones que usan bases de datos, estos cálculos se utilizan en: fechas de vencimientos, cálculos de interés, cumpleaños o el número de días que alguien ha estado en el hospital.

Las funciones de fechas de SQL Server realizan conversiones automáticamente de los tipos CHAR o VARCHAR a los tipos DATETIME o SMALLDATETIME según sea el caso. Para mostrar ejemplos con las funciones de fecha SQL utilizare una tabla con el siguiente diseño:

Fig 1. El diseño de la tabla para los ejemplos



Algo importante que debe tenerse en cuenta, es que SQL Server trata cualquier fecha con dos dígitos en el año si son menores a 50 como años del siguiente siglo. Ejemplo:

Fig 2. Fecha de dos dígitos menor a 50 años.



Y a las fechas con los dos dígitos en el año mayores a 50 como años del siglo actual. Ejemplo:

Fig 3. Fecha de dos dígitos mayor a 50 años.



Debido a esto, para evitar problemas en las operaciones siempre es recomendable trabajar las fechas con 4 dígitos, como lo muestro en los siguientes ejemplos.

Fig 4. Fecha de cuatro dígitos menor a 50 años.



Fig 5. Fecha de cuatro dígitos mayor a 50 años.



Las funciones de fecha
Antes de trabajar con las funciones de fechas es necesario entender los componentes de los tipos de dato fecha.

Fig 6. Las partes del tipo de dato fecha.



Bien a continuación muestro los ejemplos con las funciones de fecha.

La función DATEADD
Esta función permite agregar un intervalo de tiempo a una fecha para obtener la suma del intervalo de tiempo y la fecha a la que se le aplica la función. Por ejemplo

Fig 7. Ejecutando la función para agregar 8 horas a la columna deliverydate.



La función DATEDIFF
Esta función regresa la diferencia entre dos fechas según la parte de la fecha que se especifique. Ejemplo:

Fig 8. Ejecutando la función obtener la diferencia en horas entre purchasedate y deliverydate.



La función DATENAME
Esta función regresa una cadena representando el nombre de la parte de la fecha que se especifique. Ejemplo:

Fig 9. Ejecutando la función para obtener el nombre del día de la semana y el mes del año.



La función DATEPART
Este función regresa el valor entero de la parte de la fecha que se especifique. Ejemplo:

Fig 10. Ejecutando la función para obtener el valor entero del día del año.



La función GETDATE
Esta función regresa la fecha y la hora actual del servidor. Ejemplo:

Fig 11. Obteniendo la fecha y la hora actual.



Las funciones DAY, MONTH, y YEAR
Estas funciones regresan el entero correspondiente de la fecha en la cual se aplique la función, en rigor de verdad estas funciones tienen su equivalencia con la función DATEPART, por ejemplo: la función DAY es equivalente a DATEPART(dd,fecha), la función MONTH equivale a DATEPART(mm,fecha) y así lo mismo para la función YEAR que equivale a DATEPART(yy,fecha).

Descarga el código fuente SQL
