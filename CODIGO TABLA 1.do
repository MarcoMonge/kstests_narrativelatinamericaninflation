*Para las pruebas de comparación con la economía dolarizada hipotética:
*Barra de herramientas 
* ---> Archivo 
* ---> Importar
* ---> Hoja de cálculo Excel (*.xls;*.xlsx)
* Importamos la base "DATOS PRUEBAS TABLA 1".
* Para reproducir la primera columna, importamos la primera hoja y 
* la segunda hoja para la segunda columna.
*Las variables que dan el nombre del PAÍS respectivo son un identificador:
*0: economía dolarizada hipotética
*1: país respectivo
*Así, en la fila TESTPAÍS correspondiente, las celdas aparejadas al 1 son
*la serie de inflación del país respectivo; y las asociadas al 0 son la serie
*de inflación de la economía dolarizada hipotética (las fechas son las de la
*primera columna; por ello se repiten.
*Nota 1: Si bien es impráctico, es necesario porque STATA ejectua las pruebas 
*K-S de dos muestras distinguiendo entre ambas mediante otra variable.
*Luego esto, solo debemos ejecutar el siguiente comando
ksmirnov TESTBOLIVIA, by(BOLIVIA) exact
ksmirnov TESTBRASIL, by(BRASIL) exact
ksmirnov TESTCHILE, by(CHILE) exact
ksmirnov TESTCOLOMBIA, by(COLOMBIA) exact
ksmirnov TESTCOSTARICA, by(COSTARICA) exact
ksmirnov TESTREPUBLICADOMINICANA, by(REPUBLICADOMINICANA) exact
ksmirnov TESTHONDURAS, by(HONDURAS) exact
ksmirnov TESTMEXICO, by(MEXICO) exact
ksmirnov TESTNICARAGUA, by(NICARAGUA) exact
ksmirnov TESTPERU, by(PERU) exact
ksmirnov TESTPARAGUAY, by(PARAGUAY) exact
ksmirnov TESTURUGUAY, by(URUGUAY) exact
*Nota 2: "exact" calcula el p-value exacto.
