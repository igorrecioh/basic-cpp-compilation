cmake_minimum_required(VERSION 3.16.0)

project(basic-cpp-compilation 
    VERSION 0.1
    LANGUAGES CXX)

# Creación de librerías
add_library(matematicas src/matematicas.cpp)
add_library(fisica src/fisica.cpp)

# Inclusión de directorios para buscar ficheros de cabecera
target_include_directories(matematicas PUBLIC ${CMAKE_SOURCE_DIR}/include)
target_include_directories(fisica PUBLIC ${CMAKE_SOURCE_DIR}/include)

# Creación del ejecutable
add_executable(ejecutable main.cpp)

# Lincado de librerías para el ejecutable
target_link_libraries(ejecutable PRIVATE matematicas fisica)

# Habilitación de testing
enable_testing()

# Inclusión del directorio de tests
add_subdirectory(tests)