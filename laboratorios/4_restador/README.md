## Restador  de 4 bits

El objetivo de este proyecto es implementar un restador de 4 bits basado en la técnica de complemento a 2, permitiendo realizar operaciones de resta A−B utilizando el modulo del sumador de 4 bits, construido en el segundo laboratorio, y compuertas lógicas XOR. 


#### Operación complemento a 2.

El complemento a 2 permite representar tanto números positivos como negativos en un sistema binario. Un número negativo, en complemento a 2, es el complemento binario de su valor absoluto menos uno. Esto simplifica las operaciones de suma y resta, pues los circuitos sumadores pueden usarse sin modificaciones significativas para manejar números negativos. Los modulo de resta  utilizan sumadores y simplemente convierten uno de los operandos a su complemento a 2 para realizar la operación como una suma. El complemento a 2 se calcula como sigue:   

##### Paso 1: Inversión de Bits

Invertir todos los bits del número. Por ejemplo, si el número binario es $1101_2$​, su inversión de bits será $0010_2$​.


##### Paso 2: Adición de Uno

Suma 1 al número binario invertido. Continuando con el ejemplo anterior, $0010_2+1 = 0011_2$​.


El resultado final, $0011_2$​, es el complemento a 2 de $1101_2$​, que representa el número $−3$ en decimal.


### Funcionamiento del restador

El circuito presentado a continuación tiene la capacidad de realizar restas y sumas utilizando una técnica de complemento a 2. 

<p align="center">
 <img src="../figs/Restador.png" alt="alt text" width=400 >
</p>

Para realizar la operación de resta, el circuito presenta el siguiente funcionamiento: 

Se debe fijar la entrada $C_i = 1$, asi las compuertas XOR invierten los bits de B (convirtiendo B en su complemento a 1).
Se añade un 1 al acarreo de entrada del primer sumador completo, lo que convierte B en su complemento a 2. El circuito luego suma A con el complemento a 2 de B, resultando en A−B. Al igual que en la suma, el acarreo de salida se propaga de un bloque a otro.

