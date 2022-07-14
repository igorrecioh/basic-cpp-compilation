# Creación de un ejecutable en C++ por pasos

- Con librería
```bash
# Creación del fichero objeto (.o) para el módulo 'matematicas'
# Flag -c --> Solamente compila y ensambla
# -I. --> Busca los ficheros include en el directorio actual (.)
g++ -c matematicas.cpp -I.

# Creación del fichero objeto (.o) para el main
g++ -c main.cpp -I.

# Creación del ejecutable a partir de los ficheros objeto
g++ -o ejecutable *.o

# Ejecución
./ejecutable
```