g++ -c main.cpp -o main.o

g++ -c -fPIC foo.cpp -o foo.o
g++ -c -fPIC bar.cpp -o bar.o

g++ -shared foo.o bar.o -Wl,-soname,libfoobar.so.1 -o libfoobar.so.1.0 

ln -s libfoobar.so.1.0 libfoobar.so

ln -s libfoobar.so.1.0 libfoobar.so.1

g++ main.o -L. -lfoobar -o mainejecutable

export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH

./mainejecutable