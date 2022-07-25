# channel 通道

## 案例1

```
func process(timeout time.Duration) bool {
	ch := make(chan bool) // 改为 make(chan bool, 1) 就不会发生泄漏

	go func() {
		// 模拟处理耗时的业务
		time.Sleep(timeout + time.Second)
		ch <- true // block
		fmt.Println("exit goroutine")
	}()

	select {
	case result := <-ch:
		return result
	case <-time.After(timeout):
		fmt.Println("timeout")
		return false
	}
}
```

- `ch` 非缓冲通道
- `ch <- true // block` 由于 ch 是非缓冲的，且无接受者等待，因此 goroutine 会被阻塞
- 如果发生了超时，那么 `ch` 永远不会被接收，那么 goroutine 永远会被阻塞在 <- 操作，发生 goroutine 泄漏

Go 的开发者极力推荐使用 Channel，不过，这两年，大家意识到，Channel 并不是处理并发问题的“银弹”，

1. 有时候使用并发原语更简单，而且不容易出错。所以，我给你提供一套选择的方法:
2. 共享资源的并发访问使用传统并发原语；
3. 复杂的任务编排和消息传递使用 Channel；
4. 消息通知机制使用 Channel，除非只想 signal 一个 goroutine，才使用 Cond；
5. 简单等待所有任务的完成用 WaitGroup，也有 Channel 的推崇者用 Channel，都可以；
6. 需要和 Select 语句结合，使用 Channel；
7. 需要和超时配合时，使用 Channel 和 Context。

## 参考资料

- https://en.wikipedia.org/wiki/Memory_model_(programming)
- https://en.wikipedia.org/wiki/Memory_ordering