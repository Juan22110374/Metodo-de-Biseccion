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


# Código utilizado

#include <iostream>
#include <cmath>
#include <SFML/Graphics.hpp>
using namespace std;

class Bisection { // se crea una clase llamada Bisection 
private:  // atributos privados de tipo Double (números flotantes usando decimales)
    double a; 
    double b;
    double precision;
    
public: // Métodos públicos 
    Bisection(double a, double b, double precision) { // primer método con parámetros
        this->a = a; // se le asigna valor un núevo valor a "a"
        this->b = b; // se le asigna valor un núevo valor a "b"
        this->precision = precision; // se le asigna valor un núevo valor a "presicion"
    }
    
    double function(double x) { //Método el cual nos indica la ecuación a usar 
        return x * x - 4;
    }
    
    double bisectionMethod() { // método el cual se hace los cálculos para el método de bisección
        double c;
        
        if (function(a) * function(b) >= 0) { // si la función a por la función b es mayor o igual a 0
            cout << "El metodo de biseccion no es aplicable en este intervalo." << endl; // se imprime pantalla
            return 0;
        }
        
        while ((b - a) >= precision) { //mientras que la suma de b -a es mayor o igual a la presición
            c = (a + b) / 2; //se le da un valor a C, el cual es la suma de a+b dividido entre 2
            
            if (function(c) == 0.0) { //si el atributo c es igual a 0, se acaba el while
                break;
            }
            else if (function(c) * function(a) < 0) { //si la función no es diferente de 0, se le da un nuevo valor a "b"
                b = c;
            }
            else { //si la función no es diferente de 0, se le da un nuevo valor a "a"
                a = c; 
            }
        }
        
        return c;
    }
};

int main() { //empieza el main 
    double a, b, precision; // se declaran 3 variables de tipo Double 
    
    cout << "Ingrese el extremo izquierdo del intervalo (a): ";
    cin >> a; //se le da un  valor a "a"
    
    cout << "Ingrese el extremo derecho del intervalo (b): ";
    cin >> b ;//se le da un  valor a "b"
    
    cout << "Ingrese la precision deseada: ";
    cin >> precision; //se le da un  valor a "presición"
    
    Bisection bisection(a, b, precision); // por medio de un objeto llamado Bisection, se le manda los parámetros al método bisection
    double root = bisection.bisectionMethod(); // se mandan los nuevos parámetros del método bisection al método bisectionMethod
    
    cout << "La raiz aproximada es: " << root << endl; //se imprime el valor de la raíz aproximada 
    
    // Configuración de la ventana gráfica
    int windowWidth = 800;
    int windowHeight = 600;
    sf::RenderWindow window(sf::VideoMode(windowWidth, windowHeight), "Gráfico de la función");
    
    // Configuración de la gráfica
    int graphWidth = windowWidth - 100;
    int graphHeight = windowHeight - 100;
    int graphX = 50;
    int graphY = windowHeight - 50;
    sf::VertexArray graph(sf::LinesStrip, graphWidth);
    
    // Puntos de la gráfica
    double x = a;
    double dx = (b - a) / graphWidth;
    
    for (int i = 0; i < graphWidth; i++) {
        // Acceso al vértice actual mediante referencia
        sf::Vertex& point = graph[i];
        
        // Establecer la posición del vértice en la gráfica
        point.position = sf::Vector2f(graphX + i, graphY - bisection.function(x) * graphHeight);
        
        // Incrementar el valor de x
        x += dx;
    }
    
    // Dibujo de la gráfica
    while (window.isOpen()) {
        sf::Event event;
        
        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed) {
                window.close();
            }
        }
        
        window.clear();
        window.draw(graph);
        window.display();
    }
    
    return 0;
}

# Concluyendo...

Este programa es una gran inversión para tu negocio, debido a que puedes ver las aproximaciones de las raíces y te ahorra bastante tiempo y posibles confusiones en los cálculos, ya que este programa te los hace automáticamente sin errores, solo introduciendo la ecuación deseada. Además con la aplicación adecuada, el código te grafica el comportamiento de cada raíz que se va obteniendo. Una excelente aplicación, no dude e invierta en nuestro proyecto. Gracias por su atención.
