package main

import (
	"time"
)

func main() {
	ch := make(chan int)
	go func() {
		for range time.Tick(1 * time.Second) {
			ch <- 0
		}
	}()

	for { // 一直重复 select
		select {
		case <-ch:
			println("case1")
		case <-ch:
			println("case2")
		}
	}
}
