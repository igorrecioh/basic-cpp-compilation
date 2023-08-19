# g++ -c matematicas.cpp -I.
g++ -c src/matematicas.cpp -I include/ -o build/matematicas.o

# g++ -c main.cpp -I.
g++ -c src/main.cpp -I include/ -o build/main.o

# g++ -o ejecutable *.o
g++ -o build/ejecutable build/*.o

# ./ejecutable
./build/ejecutable