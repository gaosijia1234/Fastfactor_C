# About The Project
 if x % 3 == 0 that means 3 is a factor of x.\
 fastfactor works like a "standard" UNIX command: the user can invoke the command like\
 fastfactor 12 13\which would output

12: 1 2 3 4 6 12\
13: 1 13\
or they can pass a file with a list of integers. for example, assume we have a file nums\

cat nums\
12\
13\
4\
if we run

fastfactor < nums\
we would get

12: 1 2 3 4 6 12\
13: 1 13\
4: 1 2 4

# Skills Used 
fork()\
pipe()
# To Implement: 
create a folder called fastfactor and implement main.c
# To Compile: 
$ cc -o fastfacor main.c\
$ ./fastfactor 12 14 
