all: main.exe

main.exe: main.o
	gcc main.o -s -o main.exe

main.o: main.asm
	nasm -f win64 main.asm -o main.o

clean:
	del main.o main.exe