# Creación de librería dinámica con SONAME

El formato SONAME se emplea como forma de gestionar el versionado de librerías dinámicas.

```bash
# Creamos el fichero objeto para el main
g++ -c main.cpp -o main.o

# Generamos los ficheros objeto (módulos) para las librerías dinámicas
# Se le añade el flag -fPIC (Position Independent Code) para indicar que se asignan a cualquier posición del espacio de direcciones (a diferencia de las librerías estáticas)
g++ -c -fPIC foo.cpp -o foo.o
g++ -c -fPIC bar.cpp -o bar.o

# Creamos la librería dinámica con el flag -shared
# Con -Wl le pasamos opciones al linker separadas por comas
# En este caso, le pasamos la opción -soname y el nombre/versión que le daremos
# El soname indica la compatibilidad de la librería, en este caso la versión 1
# El archivo real se denominará libfoobar.so.1.0
g++ -shared foo.o bar.o -Wl,-soname,libfoobar.so.1 -o libfoobar.so.1.0 

# El linker buscará la librería mediante el archivo libfoobar.so. 
# Al crear el ejecutable, queda registrado el soname y por tanto la dependencia a nivel de versión
# Por ello, creamos un enlace simbólico que apunte al archivo real (libfoobar.so.1.0)
ln -s libfoobar.so.1.0 libfoobar.so

# En tiempo de ejecución, el linker lee el soname del ejecutable. Este soname es libfoobar.so.1
# Por ello debemos crear un enlace simbólico con este nombre apuntando al archivo real (libfoobar.so.1.0)
ln -s libfoobar.so.1.0 libfoobar.so.1

# Lincamos el main con la libreria generada.
## -L . --> Indicamos dónde encontrar las librerías
## -lfoobar --> indicamos el nombre de la librería. Da por hecho que comienza por lib y su extensión es .so por lo que no es necesario incluirlo
g++ main.o -L. -lfoobar -o mainejecutable

# Como la librería generada no está en una ubicación estandar (como por ejemplo /usr/lib), tenemos que setear la variable de entorno LD_LIBRARY_PATH.
# En este caso, le decimos que busque en el directorio actual (usando .) y que mantenga lo ya existente en la variable
export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH

# Ejecución del programa
./mainejecutable

# Podemos observar el SONAME de la librería simplemente ejecutando
objdump -p libfoobar.so | grep SONAME
```