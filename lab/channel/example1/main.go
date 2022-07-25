package main

import (
	"fmt"
	"time"
)

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

func main() {
	process(1 * time.Second)
	time.Sleep(time.Second)
	fmt.Println("done")
}
