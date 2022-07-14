# Versión CMake mínima
cmake_minimum_required(VERSION 3.16.0)

# Nombre del proyecto, versión y lenguajes empleados
project(basic-cpp-compilation 
    VERSION 0.1
    LANGUAGES CXX)

# Crea librería 'matematicas' a partir de su .cpp y .hpp
add_library(matematicas matematicas.cpp matematicas.hpp)

# Incluye el directorio raiz del proyecto para buscar ficheros include
target_include_directories(matematicas PUBLIC ${CMAKE_SOURCE_DIR})

# Añade el ejecutable denominado 'ejecutable' a partir de main.cpp
add_executable(ejecutable main.cpp)

# Enlaza la librería 'matematicas' al ejecutable
target_link_libraries(ejecutable PRIVATE matematicas)