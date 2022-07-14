# Fundamentos para la compilación en C++

## Introducción

El objetivo de este repo es proporcionar ejemplos sencillos para comprender los fundamentos más elementales relacionados con la compilación en C++.

En todos los ejemplos proporcionados, se incluye un fichero README en el que se explican los pasos a seguir para la compilación. Además, cada ejemplo contiene un script de bash para ejecutar los comandos de forma automática ejecutando:

```bash
sh compile.sh
```

## Índice

- [Compilación de un fichero fuente paso a paso](/compilacion_pasos/README.md)
- [Compilación de un módulo usado en main](/compilacion_modulo/README.md)
- [Compilación de un módulo usado en main con Makefile](/compilacion_modulo_makefile/README.md)
- [Compilación de un módulo usado en main con CMake](/compilacion_modulo_cmake/README.md)
- [Compilación de varios módulos usados en main con CMake y tests](/modulos_cmake_testing/README.md)
- [Creación de una librería estática](/lib_estatica/README.md)
- [Creación de una librería dinámica](/lib_dinamica/README.md)

## WIP
- [ ] Creación de ejemplo para librería dinámica con soname
- [ ] Mejorar ejemplos testing
- [ ] Incluir en todos los ejemplos estructura coherente de proyecto (src, build, include, tests...)
- [ ] Incluir diagrama explicando brevemente el flujo de compilación completo
- [ ] Completar y mejorar .gitignore
- [ ] Añadir linter
## Referencias

- https://renenyffenegger.ch/notes/development/languages/C-C-plus-plus/GCC/create-libraries/index
- https://access.redhat.com/documentation/es-es/red_hat_enterprise_linux/8/html/developing_c_and_cpp_applications_in_rhel_8/the-soname-mechanism_creating-libraries-with-gcc
- https://www.youtube.com/watch?v=NEBRJth_NXE&list=PLgnQpQtFTOGRv7VS6fYerEbT4ckBovKur

## Agradecimientos
- [@stachnis](https://github.com/stachnis)
- [@nachovizzo](https://github.com/nachovizzo)
- [@rmarcuzzi](https://github.com/rmarcuzzi)
- [@niosus](https://github.com/niosus)