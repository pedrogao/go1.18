# select

## 概述

C 语言的 select 系统调用可以同时监听多个文件描述符的可读或者可写的状态，
Go 语言中的 select 也能够让 Goroutine 同时等待多个 Channel 可读或者可写，
在多个文件或者 Channel状态改变之前，**select 会一直阻塞当前线程或者 Goroutine**。

> 注意：select 监听多个 channel 状态，可读、可写均是状态，否则一直阻塞，和系统调用一样。
> 所以 select 也是轮询每个 case，直到满足一个 case 则执行该 case 并退出，不然会不停的轮询
> 每个 case，等同于 `select{}`，是一个死循环。

特点：

- select 能在 Channel 上进行**非阻塞**的收发操作；
- select 在遇到多个 Channel 同时响应时，会随机执行一种情况。

> 当 channel 遇到 select 时，出、入通道都是非阻塞的。

在通常情况下，select 语句会阻塞当前 Goroutine 并等待多个 Channel 中的一个达到可以收发的状态。
但是如果 select 控制结构中包含 default 语句，那么这个 select 语句在执行时会遇到以下两种情况：

1. 当存在可以收发的 Channel 时，直接处理该 Channel 对应的 case；
2. 当不存在可以收发的 Channel 时，执行 default 中的语句。

select 在遇到多个 <-ch 同时满足可读或者可写条件时会随机选择一个 case 执行其中的代码。

## 历史

select 实现非阻塞收发不是最初的设计，Go 语言在最初版本使用：

```go
x, ok := <-c
```

实现非阻塞的收发，以下是与非阻塞收发相关的提交：

- select default 提交支持了 select 语句中的 default1；
- gc: special case code for single-op blocking and non-blocking selects 提交引入了基于 select 的非阻塞收发2。
- gc: remove non-blocking send, receive syntax 提交将 x, ok := <-c 语法删除3；
- gc, runtime: replace closed(c) with x, ok := <-c 提交使用 x, ok := <-c 语法替代 closed(c) 语法判断 Channel 的关闭状态4；

`x, ok := <-c` 从最开始的非阻塞，一直演变到了非关闭态的检查。


## 编译

四种情况介绍处理的过程和结果：

1. select 不存在任何的 case：直接阻塞。
2. select 只存在一个 case：在处理单操作 select 语句时，
    会根据 Channel 的收发情况生成不同的语句。
    当 case 中的 Channel 是空指针时，会直接挂起当前 Goroutine 并陷入永久休眠。
3. select 存在两个 case，其中一个 case 是 default；
4. select 存在多个 case；



核心点： **select 非阻塞发送、接收 channel。**

- runtime.selectnbrecv
- runtime.selectnbrecv2
- runtime.chansend

参考 [select examples](./select)









