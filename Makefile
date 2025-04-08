ASM=nasm
ASM_FLAGS=-f bin
ASM_SRC=boot.asm
BIN_OUT=boot.bin

all: $(BIN_OUT)

$(BIN_OUT): $(ASM_SRC)
	$(ASM) $(ASM_FLAGS) $(ASM_SRC) -o $(BIN_OUT)
	qemu-system-x86_64 $(BIN_OUT)

run: $(BIN_OUT)
	qemu-system-x86_64 $(BIN_OUT)

clean:
	rm -f $(BIN_OUT)