g++ -c main.cpp -o main.o

g++ -c foo.cpp -o foo.o
g++ -c bar.cpp -o bar.o

ar rcs libfoobar.a foo.o bar.o

g++ main.o  -L. -lfoobar -o mainejecutable

./mainejecutable