# Author: Micheal FLoyd
# File Name: Makefile
# Last Modified: 2-13-25
# Purpose: Build system for the employee project

CC= g++ #Compiler
CFLAGS= -c -Wall -Wextra #Compile Flags (For all errors and warnings)

TARGET = employee #Target is where you name your executable command

all: $(TARGET) #Default target to build program

$(TARGET): main.o Employee.o Officer.o Supervisor.o 
	$(CC) -o $(TARGET) main.o Employee.o Officer.o Supervisor.o #Links all object files to make executable

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp #Compiles main.cpp and makes main.o

Employee.o: Employee.cpp
	$(CC) $(CFLAGS) Employee.cpp #Compiles Employee.cpp and makes Employee.o

Officer.o: Officer.cpp
	$(CC) $(CFLAGS) Officer.cpp #Compiles Officer.cpp and makes Officer.o

Supervisor.o: Supervisor.cpp
	$(CC) $(CFLAGS) Supervisor.cpp #Compiles Supervisor.cpp and makes Supervisor.o

clean:
	rm -f *.o *~ $(TARGET) #Cleans .o, ~, and executable command from main directory: (make clean)
