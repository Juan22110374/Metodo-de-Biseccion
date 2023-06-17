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

