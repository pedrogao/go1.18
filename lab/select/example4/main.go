package main

func main() {
	ch := make(chan int, 1)
	ch <- 1
	select {
	case i, ok := <-ch: // 非阻塞
		println(ok)
		println(i)
	}

	ch = make(chan int, 0)
	go func() {
		ch <- 2
	}()
	select {
	case i := <-ch: // 非阻塞
		println(i)
	}
}
