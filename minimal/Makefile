GOOS=darwin
GOARCH=amd64

all: noruntime runtime

noruntime:
	@go tool asm -I ../pkg/include -gensymabis -o symabis main_${GOOS}_${GOARCH}.s
	@go tool compile -symabis symabis -p main -o x1.o main.go
	@go tool asm -I ../pkg/include -o x2.o main_darwin_amd64.s
	@go tool pack c x.a x1.o x2.o
	@go tool link -linkmode=internal -E 'main.entry' x.a

runtime:
	@go tool asm -I ../pkg/include -gensymabis -o symabis main_${GOOS}_${GOARCH}.s
	@go tool compile -symabis symabis -p main -o x1.o main.go
	@go tool asm -I ../pkg/include -o x2.o main_darwin_amd64.s
	@go tool pack c x.a x1.o x2.o
	@go tool link -linkmode=internal x.a

clean:
	@rm ./*.out ./*.o ./*.a symabis
