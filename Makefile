all: 
	@nasm -f macho64 -o ./out/main.o main.asm
	@ld ./out/main.o -lSystem -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -o ./out/a.out
	@./out/a.out
