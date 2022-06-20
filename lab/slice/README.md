# 切片深度探索

```shell
export GOROOT=/Users/pedrogao/softwares/go1.18 
export GOPATH=/Users/pedrogao/projects/golang

go tool compile -I . ./main.go
go tool objdump -S ./main.o 
 
#go tool pack c main.a main.o
go tool link -o main main.o


go tool nm -n -type ./main.o
```

## 参考资料

-[Slice expressions](https://go.dev/ref/spec#Slice_expressions)
-[Go Slices: usage and internals](https://go.dev/blog/slices-intro)
-[nm tool](https://pkg.go.dev/cmd/nm)
-[Arrays, slices (and strings): The mechanics of 'append'](https://go.dev/blog/slices#TOC_2.)
-[GO编程模式：切片，接口，时间和性能](https://coolshell.cn/articles/21128.html)
-[简单看看 Go 1.17 的新调用规约](https://xargin.com/go1-17-new-calling-convention/)
-[mallocgc](https://golang.design/under-the-hood/zh-cn/part2runtime/ch07alloc/basic/)
-[Golang: The time complexity of append()](https://medium.com/vendasta/golang-the-time-complexity-of-append-2177dcfb6bad)
-[Understanding How append, copy and Slice Expressions Work](https://www.tugberkugurlu.com/archive/working-with-slices-in-go-golang-understanding-how-append-copy-and-slicing-syntax-work)
-[pyelftools](https://github.com/eliben/pyelftools)