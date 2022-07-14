#include <iostream>
#include <matematicas.hpp>
#include <fisica.hpp>

int main ()
{
    std::cout << "Usando librerías de matematicas" << std::endl;

    std::cout << "Suma de 5 y 7 = " << suma(5, 7) << std::endl;
    std::cout << "Resta de 5 y 7 = " << resta(5, 7) << std::endl;

    std::cout << "Usando librerías de fisica" << std::endl;

    std::cout << "Suma de 5 y 7 = " << gravedad(5, 7) << std::endl;
    std::cout << "Resta de 5 y 7 = " << inercia(5, 7) << std::endl;

}