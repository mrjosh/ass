macOS64: 
	@nasm -f macho64 -o ./out/main.o main.asm
	@ld ./out/main.o -lSystem -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -o ./out/main
	@./out/main

clean:
	@rm -rf ./out/*
