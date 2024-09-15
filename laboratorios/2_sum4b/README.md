## Laboratorio 02: Sumador de 4 bits

El objetivo de este laboratorio es comprender y aplicar el concepto de instanciación de módulos en Verilog mediante la implementación de un sumador de 4 bits. 

## Construcción de sumador de 4 bits

Para crear un sumador de 4 bits, se utilizan cuatro sumadores de 1 bit conectados en serie. Así, el acarreo de salida de un sumador de 1 bit se convierte en el acarreo de entrada del siguiente sumador. Cada bit de los dos números que se están sumando se procesa de manera paralela. En la siguiente figura se muestra el diagrama de bloques del sumador de 4 bit.


![fpga](../figs/4bit.png)





