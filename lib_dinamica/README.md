# Creación de librería dinámica

```bash
# Creamos el fichero objeto para el main
g++ -c main.cpp -o main.o

# Generamos los ficheros objeto (módulos) para las librerías dinámicas
# Se le añade el flag -fPIC (Position Independent Code) para indicar que se asignan a cualquier posición del espacio de direcciones (a diferencia de las librerías estáticas)
g++ -c -fPIC foo.cpp -o foo.o
g++ -c -fPIC bar.cpp -o bar.o

# Creamos la librería dinámica con el flag -shared
# La librería dinámica en este caso tiene extensión .so
g++ -shared foo.o bar.o -o libfoobar.so

####
# Lincamos el main con la libreria generada.
## -L . --> Indicamos dónde encontrar las librerías
## -lfoobar --> indicamos el nombre de la librería. Da por hecho que comienza por lib y su extensión es .so por lo que no es necesario incluirlo
g++ main.o -L. -lfoobar -o mainejecutable

# Como la librería generada no está en una ubicación estandar (como por ejemplo /usr/lib), tenemos que setear la variable de entorno LD_LIBRARY_PATH.
# En este caso, le decimos que busque en el directorio actual (usando .) y que mantenga lo ya existente en la variable
export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH

# Ejecución del programa
./mainejecutable
```