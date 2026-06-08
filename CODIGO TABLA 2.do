*Para las pruebas de efectos asimétricos:
*Barra de herramientas 
* ---> Archivo 
* ---> Importar
* ---> Hoja de cálculo Excel (*.xls;*.xlsx)
* Importamos la base "DATOS PRUEBAS TABLA 2".
*La variable IDENTIFICADOR contiene la misma información que la variable Fecha; 
*pero en forma de listado de números naturales para hacerla más manejable.
*De este modo, primero ejectuamos el comando
drop if IDENTIFICADOR < 13
*Es decir, usaremos 2019 como referencia prepandémica.
*La variable con el nombre del PAÍS es la serie de inflación del país respectivo.
*La variable de RECUPERACIONPAÍS es dicotómica íntimamente relacionada a la 
*variable Fecha:
*0: meses en los cuales la recuperación del país respectivo (según nuestra 
*definición con el COVID Stringency Index; los detalles pueden consultarse en 
*la hoja COVID Stringency Index de DATOS,xslx) no habían ocurrido
*1: mesese en los cuales la recuperación del país respectivo ya había ocurrido
*Análogamente, la variable COVID-19 es dicotómica para indicar fechas:
*0: antes de marzo de 2020
*1: a partir de marzo 2020
*De este modo, para evaluar la entrada en pandemia como disrupción deflacionaria,
*ejecutamos el siguiente comando
drop if RECUPERACIONPAÍS == 1
ksmirnov PAÍS, by(COVID19) exact
*Nota 1: "exact" calcula el p-value exacto.
*Ahora bien, para evaluar la "salida" de pandemia como disrupción inflacionaria,
*necesitamos de nuevo la base original. Por lo que al igual que al inicio:
*Para las pruebas de efectos asimétricos:
*Barra de herramientas 
* ---> Archivo 
* ---> Importar
* ---> Hoja de cálculo Excel (*.xls;*.xlsx)
* Importamos la base "DATOS PRUEBAS TABLA 2".
*Y hecho esto, ejecutamos el siguiente comando:
drop if COVID19 == 0
ksmirnov PAÍS, by(RECUPERACIONPAÍS) exact
*Se repite este proceso (desde la importación de la hoja de cálculo) para todos 
*los países
