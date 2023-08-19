# Creación de un ejecutable en C++ con dependencia de un módulo

```bash
# Creación del fichero objeto (.o) para el módulo 'matematicas'
# Flag -c --> Solamente compila y ensambla
# -I include/ --> Busca los ficheros de cabecera en el directorio include
g++ -c src/matematicas.cpp -I include/ -o build/matematicas.o

# Creación del fichero objeto (.o) para el main
g++ -c src/main.cpp -I include/ -o build/main.o

# Creación del ejecutable a partir de los ficheros objeto
g++ -o build/ejecutable build/*.o

# Ejecución
./build/ejecutable
```
