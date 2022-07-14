rm *.so *.o mainejecutable

g++ -c main.cpp -o main.o

g++ -c -fPIC foo.cpp -o foo.o
g++ -c -fPIC bar.cpp -o bar.o

g++ -shared foo.o bar.o -o libfoobar.so

g++ main.o -L. -lfoobar -o mainejecutable

export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH

./mainejecutable