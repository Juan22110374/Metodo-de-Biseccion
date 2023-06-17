# Programando... (Manual de desarrollador)

En este caso nosotros empezamos viendo que necesitamos una clase, la cual la llamamos Bisection. En el cual creamos 3 variables privadas a, b y precisión. Y tres métodos.
El primer método llamada Bisection, tiene 3 parámetros de tipo doublé (es un tipo de dato numérico que representa números en coma flotante de doble precisión. Se utiliza para almacenar valores decimales con mayor precisión que el tipo float), con las 3 variables creadas previamente se le asignaron nuevos valores.
El segundo método es de tipo doublé llamado Function con parámetro de tipo doublé, en el cual es la ecuación que vamos a resolver para encontrar su raíz.
El otro método es de tipo doublé llamado BisectionMethod, en el cual tenemos las funciones que realiza el método de bisección, tenemos un If en el cual multiplica los valores de a * b y este resultado tiene que ser mayor o igual a o, si no es así nos muestra que no se puede realizar el método.  También tenemos un While el cual b menos a tiene que ser mayor o igual a la precisión, en donde tenemos un valor c que es el resultado de la suma de a+b dividido entre 2. Si la función llega a 0, se acaba el método, sino el valor de c se le da a b y se vuelve a realizar la operación. 
En el main tenemos 3 mensajes, el cual les pide el valor de a, b y la precisión que deseamos obtener.  Y nos da el valor aproximado de la raíz. 
También tenemos una parte del código el cual nos gráfica todo usando Visual Studio Code, pero necesitas instalar muchas extensiones las cuales no tuvimos las capacidades para realizarlo. 

