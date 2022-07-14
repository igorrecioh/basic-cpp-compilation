BUILD_DIR := ./build
EXECUTABLE := ejecutable

# Misma idea que compilacion_modulo pero usando Makefile

# Creación del ejecutable a partir de los ficheros objeto
$(BUILD_DIR)/$(EXECUTABLE): $(BUILD_DIR)/matematicas.o $(BUILD_DIR)/main.o
	$(CXX) -o $@ $^

# Generación de ficheros objeto
$(BUILD_DIR)/%.o: %.cpp
	$(shell mkdir -p $(BUILD_DIR))
	$(CXX) -o $@ -c $^ -I.

# Objetivo (target) clean para borrar el directorio build/
clean:
	rm -rf $(BUILD_DIR)