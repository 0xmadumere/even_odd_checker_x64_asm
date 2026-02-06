all: main.exe

main.exe: main.o
	gcc build/main.o -s -o main.exe

main.o: main.asm
	nasm -f win64 main.asm -o build/main.o

clean:
	del build/main.o main.exe