# ALU-con-FPGA

## Consigna:

Diseñar, implementar, y simular el funcionamiento de una ALU con operandos A y B de 4 bits, y salida R de 4 bits. El diagrama a implementar y el diagrama de pines de la placa a utilizar (Basys3) se pueden observar en el archivo “DiseñoALU.pdf”. En dicho documento se muestra la función a realizar por la ALU la cual se define con 4 bits individuales de control C (C1, C2, C3, C4), permitiendo las siguientes funciones:

- Suma o Resta
- Saturación o No saturación
- Selección AND bit a bit u OR bit a bit (con un MUX)
- Selección salida parte Aritmética o parte Lógica (con un MUX)

Además del resultado en 4 bits, la ALU debe tener un bit de salida que indique cuando hubo carry de salida, y otro bit de salida que indique cuándo hubo overflow. 

Para realizar el trabajo es imprescindible observar los documentos que se adjuntan, donde se encuentra una explicación conceptual básica al respecto del trabajo, tips a tener en cuenta para el informe, links importantes para el TP3 y DiseñoALU.

## Consideraciones:
Se debe implementar el trabajo en lenguaje VHDL utilizando el programa Vivado de Xilinx (ver documento que contiene link de descarga).

Utilizar los leds de la placa L0 a L7 para mostrar los resultados.

Utilizar el led L14 para mostrar si existe Carry y el led L15 para mostrar si existe Overflow.

Asignar los pines para manipular los operandos A y B con los interruptores, los bits de control con los pulsadores (botones), y los bits de salida con LEDs.

Opcional: se puede utilizar display 7 segmentos que contiene la placa para mostrar los resultados en lugar de los leds.
