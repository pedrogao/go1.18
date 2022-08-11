package main

func main() {
	ch := make(chan int)
	select {
	case i := <-ch: // 无数据，不会触发
		println(i)

	default:
		println("default") // 无其它触发，则默认触发
	}
}
