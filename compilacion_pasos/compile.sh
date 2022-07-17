g++ -E main.cpp > main.i

g++ -S main.i > main.s

g++ -c main.s > main.o

g++ main.o -o main

./main