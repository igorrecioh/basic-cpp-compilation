# Compilación de un fichero fuente paso a paso

## Preprocesado
```bash
# Solo realiza preprocesamiento. No compila, ni ensambla ni enlaza
# Genera un fichero con extensión .i
g++ -E main.cpp > build/main.i
```
## Compilado
```bash
# Solo compila. No ensambla ni enlaza
# Crea un fichero con extensión .s en lenguaje ensamblador
g++ -S build/main.i
```
## Ensamblado
```bash
# Compila y ensambla. No enlaza
# Crea un fichero objeto con extensión .o
g++ -c build/main.s
```
## Enlazado
```bash
# Enlaza y crea el ejecutable a partir del fichero objeto generado en el paso anterior
# En este paso se añadirían otras librerías externas si nuestro main dependiera de ellas
g++ build/main.o -o build/main
```