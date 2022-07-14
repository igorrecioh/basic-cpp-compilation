# Creación de librería estática

```bash
# Generamos el fichero objeto para nuestro main
g++ -c main.cpp -o main.o

# Generamos los ficheros objeto (módulos) para las librerías estaticas
g++ -c foo.cpp -o foo.o
g++ -c bar.cpp -o bar.o

# Creamos la librería estática con 'ar' a partir de los dos módulos previamente generados
# Se debe seguir la convención de nombre lib<nombre de la librería>.a
# Al ser una librería estática, la extensión es .a
ar rcs libfoobar.a foo.o bar.o

# Lincamos el main con la libreria generada.
## -L . --> Indicamos dónde encontrar las librerías
## -lfoobar --> indicamos el nombre de la librería. El compilador (concretamente el linker) da por hecho que nuestra librería comienza por lib y su extensión es .a por lo que no es necesario incluirlo
g++ main.o  -L. -lfoobar -o mainejecutable

# Ejecución del programa
./mainejecutable
```