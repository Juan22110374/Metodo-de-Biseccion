# Metodo-de-Biseccion
En este poryecto se mostrará un programa el cual nos ayudará a un método de bisección en programación orientada a objetos. 

**Introduciendo al tema…**

En este proyecto se planteó a partir de un método que se ve en métodos numéricos, una materia la cual nos ayuda a deducir múltiples raíces matemáticas y el acercamiento a una raíz 0. En este caso vamos a hacerlo guiado a un método llamado “método de bisección”.
El método de bisección es un algoritmo de búsqueda de raíces que trabaja dividiendo el intervalo a la mitad y seleccionando el subintervalo que tiene la raíz. Esto se logra llevar a cabo a través de varias interaciones que son aplicadas en un intervalo para por medio de ello encontrar la raíz de la función. Este es uno de los métodos más sencillos y de fácil intuición para resolver ecuaciones en una variable, también conocido como método del intervalo medio, este se basa en el teorema del valor intermedio, el cual establece que toda función continua f  en un intervalo cerrado [a, b] toma todos los valores que se hallan entre f(a) y f (b). Esto es que todo valor entre f(a) y f (b) es la imagen de al menos un valor del intervalo [a, b].En caso de que f(a) y f (b) tengan signos opuestos, el valor cero sería un valor intermedio entre f (j) y f (e), por lo que con certeza existe un p en [a, b] que cumple f (p)=0. De esta forma, se asegura la existencia de al menos una solución de la ecuación f (a)=0.

**El método consiste en lo siguiente:**

Debe existir seguridad sobre la continuidad de la función f(x) en el intervalo [a,b]
A continuación se verifica que 
Se calcula el punto medio m del intervalo [a,b] y se evalúa f(m) si ese valor es igual a cero, ya hemos encontrado la raíz buscada
En caso de que no lo sea, verificamos si f(m) tiene signo opuesto con f(a) o con f(b)
Se re define el intervalo [a, b] como [a, m] ó [m, b] según se haya determinado en cuál de estos intervalos ocurre un cambio de signo
Con este nuevo intervalo se continúa sucesivamente encerrando la solución en un intervalo cada vez más pequeño, hasta alcanzar la precisión deseada
El método de bisección es muy seguro para garantizar convergencia.  Si f es una función continua en el intervalo [a, b] y f(a)f(b) < 0, entonces este método converge a la raíz de f.
La bisección converge linealmente, por lo cual es un poco lento. Sin embargo, se garantiza la convergencia si f(a) y f(b) tienen distinto signo.
Si existieran más de una raíz en el intervalo entonces el método sigue siendo convergente pero no resulta tan fácil caracterizar hacia qué raíz converge el método.
![image](https://github.com/Juan22110374/Metodo-de-Biseccion/assets/136865637/212ee79e-3263-441f-b9dc-c85d4b4481d8)

# Usando el programa (Manual de usuario)... 

![image](https://github.com/Juan22110374/Metodo-de-Biseccion/assets/136865637/c38a17ae-59a5-4501-823f-1c9e7a063c7f)
 
En este caso, tenemos que poner un valor a, el cual es el extremo izquierdo del intervalo; también un valor b, el cual es el extremo derecho del intervalo; y una precisión deseada. Una vez con esto, nos da la raíz aproximada de los intervalos. 
El usuario deberá:
Primero, poner un número positivo el cual el interválo empieze en el extremo izquierdo.
Segundo, poner un segundo número positivo el cual el interválo empieze en el extremo derecho.
Tercero, poner una precisión de error deseada. 
Cuarto paso, el programa dará la raiz aproximada de los interválos puestos.

 ![image](https://github.com/Juan22110374/Metodo-de-Biseccion/assets/136865637/1ac3b603-3132-4f87-bfd2-a7cb68413fc5)

En caso de tener un valor negativo, nos muestra un mensaje el cual nos dice que el método no es aplicable debido al número negativo. 

