```sh
go tool asm -I ../pkg/include -gensymabis -o symabis main_darwin_amd64.s
go tool compile -symabis symabis -p main -o x1.o main.go
go tool asm -I ../pkg/include -o x2.o main_darwin_amd64.s
go tool pack c x.a x1.o x2.o 
go tool link -linkmode=internal -E 'main.entry' x.a 
```

```sh
go tool asm -I ../pkg/include -gensymabis -o symabis main_darwin_amd64.s
go tool compile -symabis symabis -p main -o x1.o main.go
go tool asm -I ../pkg/include -o x2.o main_darwin_amd64.s
go tool pack c x.a x1.o x2.o 
go tool link -linkmode=internal x.a 
```

```sh
go tool asm -I ../pkg/include -p main -o x2.o ./main_darwin_amd64.s
go tool pack c x.a x2.o 
go tool link -linkmode=internal -E 'main.entry' x.a 
```

```sh
$ ./a.out 
I'm here!
$ echo $?
33

$ ls -lh
total 3728
-rwxr-xr-x  1 pedrogao  staff   1.8M Apr  6 23:13 a.out



$ ls -lh                                                
total 1976
-rwxr-xr-x  1 pedrogao  staff   935K Apr  6 23:14 a.out
```

```sh
rm ./*.out ./*.o ./*.a symabis
```

又是一个黑魔法！