# Even or Odd Checker (NASM)

## Overview

A simple assembly program written in **NASM** that checks whether a number is **even or odd** and prints the result.

Created for practice with:

* NASM syntax
* Basic arithmetic
* Conditionals
* Console I/O
* Linking without default libraries

---

## How it works

1. Reads an integer from input
2. Divides the number by 2
3. Checks the remainder
4. Prints:

   * `Even` if remainder is 0
   * `Odd` if remainder is not 0

---

## Build (Windows, x64)

Assemble:

```
nasm -f win64 main.asm -o main.obj
```

Link:

```
link main.obj /subsystem:console /entry:main kernel32.lib
```

---

## Run

```
main.exe
```

Enter a number when prompted and the program will tell you if it is even or odd.

---

