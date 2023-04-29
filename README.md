# Assembly-Dot-Product
This is a simple assembly program that performs multiplication on two arrays and stores the product in memory.

## Getting Started
To run this program, you will need to have an assembly compiler installed on your machine. This code has been tested using YASM compiler.

## Program Logic
The program starts by initializing two arrays, a and b, with 5 integer values each. It then declares two memory locations, count and product, to store the count and product respectively.

The main function initializes several registers to zero before starting a loop. In this loop, the program compares the value of the count register with the rcx register. If they are equal, the program jumps to the end of the loop. Otherwise, it retrieves the i-th element from the a and b arrays, multiplies them, and adds the result to the product memory location.

Once the loop is complete, the program exits the main function and returns the result.

## How to Use
To use this program, follow these steps:

1. Save the code in a file with `.asm` extension.
2. Compile the code using an assembly compiler, for example, `yasm -f elf64 -o example.o example.asm`.
3. Link the code using a linker, for example, `ld -o example example.o`.
4. Run the program, for example, `./example`.

## Contributing
Contributions to this project are welcome. Please fork the repository and submit a pull request.
