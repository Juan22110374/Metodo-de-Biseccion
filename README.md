# Metodo-de-Biseccion
En este proyecto se mostrará un programa el cual nos ayudará a un método de bisección en programación orientada a objetos. 

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

# Desarrolladores del porgrama...

Juan Diego Arias Hernández  22110374
Jared Rodriguez Jauregui   22110373

# Programando... (Manual de desarrollador)

En este caso nosotros empezamos viendo que necesitamos una clase, la cual la llamamos Bisection. En el cual creamos 3 variables privadas a, b y precisión. Y tres métodos.
El primer método llamada Bisection, tiene 3 parámetros de tipo doublé (es un tipo de dato numérico que representa números en coma flotante de doble precisión. Se utiliza para almacenar valores decimales con mayor precisión que el tipo float), con las 3 variables creadas previamente se le asignaron nuevos valores.
El segundo método es de tipo doublé llamado Function con parámetro de tipo doublé, en el cual es la ecuación que vamos a resolver para encontrar su raíz.
El otro método es de tipo doublé llamado BisectionMethod, en el cual tenemos las funciones que realiza el método de bisección, tenemos un If en el cual multiplica los valores de a * b y este resultado tiene que ser mayor o igual a o, si no es así nos muestra que no se puede realizar el método.  También tenemos un While el cual b menos a tiene que ser mayor o igual a la precisión, en donde tenemos un valor c que es el resultado de la suma de a+b dividido entre 2. Si la función llega a 0, se acaba el método, sino el valor de c se le da a b y se vuelve a realizar la operación. 
En el main tenemos 3 mensajes, el cual les pide el valor de a, b y la precisión que deseamos obtener.  Y nos da el valor aproximado de la raíz. 
También tenemos una parte del código el cual nos gráfica todo usando Visual Studio Code, pero necesitas instalar muchas extensiones las cuales no tuvimos las capacidades para realizarlo. 

# El diagrama Plant UML es el siguiente:
![image](https://github.com/Juan22110374/Metodo-de-Biseccion/assets/136865637/31dc1439-7a85-42a3-ac55-716e6e8f5f35)


# Concluyendo...

Este programa es una gran inversión para tu negocio, debido a que puedes ver las aproximaciones de las raíces y te ahorra bastante tiempo y posibles confusiones en los cálculos, ya que este programa te los hace automáticamente sin errores, solo introduciendo la ecuación deseada. Además con la aplicación adecuada, el código te grafica el comportamiento de cada raíz que se va obteniendo. Una excelente aplicación, no dude e invierta en nuestro proyecto. Gracias por su atención.
