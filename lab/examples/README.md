```sh
export GOROOT=~/go/go1.16.2/
export PATH="${GOROOT}/bin:${PATH}"
go tool compile -I . ./main.go
#go tool pack c main.a main.o
go tool link -o main main.o
```

```sh
go tool compile -p main ./main.go 
go tool pack c main.a main.o 
go tool link main.a
```


```sh
GOARCH=386 GOOS=linux go build -n 2>&1 | sed \
    -e "1s|^|set -e\n|" \
    -e "1s|^|export GOOS=linux\n|" \
    -e "1s|^|export GOARCH=386\n|" \
    -e "1s|^|WORK='./abs'\n|" \
    -e "1s|^|alias pack='go tool pack'\n|" \
    -e "/^mv/d" \
    -e "s|-extld|-tmpdir='./abs' -linkmode=external -extldflags='-nostdlib' -extld|g" \
    | sh 2>&1 | sed -e "s/^/  | /g"
```