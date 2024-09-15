## Laboratorio 02: Sumador de 4 bits

El objetivo de este laboratorio es comprender y aplicar el concepto de instanciación de módulos en Verilog mediante la implementación de un sumador de 4 bits. 

## Construcción de sumador de 4 bits

Para crear un sumador de 4 bits, se utilizan cuatro sumadores de 1 bit conectados en serie. Así, el acarreo de salida de un sumador de 1 bit se convierte en el acarreo de entrada del siguiente sumador. Cada bit de los dos números que se están sumando se procesa de manera paralela. En la siguiente figura se muestra el diagrama de bloques del sumador de 4 bit.


Para construir un sumador de 4 bits utilizando el sumador de 1 bit como módulo base, se debe **instanciar** varios módulos deñ sumador de 1 bit y conectar sus entradas y salidas de manera que manejen el acarreo entre cada bit.

Un sumador de 4 bits suma dos números de 4 bits (```[3:0] A``` y ```[3:0] B```) y produce una suma de 4 bits (```[3:0] So```) y un acarreo de salida (```Co```). Para lograr esto, se utilizan 4 sumadores de 1 bit, cada uno manejando una posición del bit (0 a 3) y el acarreo hacia la siguiente posición.  A continuación se muestra su respectivo bloque funcional:

![fpga](../figs/4bit.png)


La implementación del sumador de 4 bits utilizando instancias del sumador de 1 bit es un ejemplo de diseño estructural en Verilog, en donde se utiliza el sumador de 1 bit para construir un sumador de 4 bits de manera modular.

### Funcionamiento

* Cada instancia del sumador de 1 bit ([sum1b](./src/sum1b.v)) toma 1 bits de las entradas ```A``` y ```B```, y un acarreo de entrada Ci. Calcula la suma de estos bits y produce una suma de un bit ```So``` y un acarreo de salida ```Co```.

* El acarreo de salida de un sumador de 1 bit se usa como acarreo de entrada para el siguiente sumador de 1 bit en la cadena.

* El sumador de 4 bits produce una salida final ```So``` de 4 bits y un acarreo de salida final ```Co```.

### Concepto de instancia

En el contexto de diseño digital y descripción HDL en Verilog, una instancia se refiere a la creación de un módulo a partir de una definición previamente definida. Instanciar un módulo significa utilizar el módulo definido anteriormente como un bloque en un diseño más grande, proporcionando conexiones específicas para las entradas y salidas del módulo.

En Verilog podemos utilizar la siguiente sintaxis:

```
module_name      instance_name(.port_0(signal_0),..,.port_n(signal_n))
```


donde: 

* ```module_name```: Es el nombre del módulo que queremos instanciar.

* ```instance_name```: Es el nombre de la instancia que vamos a generar a nivel local.

* ```port_0``` ... ```port_1```: Representa al nombre del puerto o variable declarada como entrada o salida del módulo que queremos instanciar, es decir, los nombres de los puertos que aparecen en el prototipo de dicho módulo.

* ```signal_0``` ... ```signal_n```: Corresponde al nombre de las señales que tenemos en el módulo en el cual nos encontramos trabajando y que nos servirán para interactuar con otres del diseño dentro de dicho módulo.


## Entregables

1. Comprenda cada línea del código HDL de cada archivo que se encuentra en la carpera [src](./src) y comente si es necesario en su respectivo archivo ```README.md```.

2. Realice la respectiva simulación de la descripción HDL del sumador de 4 bits y muestre evidencias en su respectivo archivo ```README.md```. Para ello puede emplear el *testbench* adjunto ([testbench](./src/sum4b_tb.v)) o, empleando el simulador que haya configurado por defecto en la instalación de ```IDE Quartus```, puede forzar los valores de las entradas en un instante de tiempo determinado.

3. Cargue la descripción HDL en la tarjeta de desarrollo, empleando la ```IDE Quartus``` y muestre en el laboratorio el funcionamiento del sumador de 4 bits, empleando interruptores como las entradas y LEDs como las salidas. 


## Referencias

**[1]**  Beltrán, F., Repositorio de Github ECCI-ARQUITECTURA DE PROCESADORES 2024-2 [Online:] https://github.com/ELINGAP-7545/page.

