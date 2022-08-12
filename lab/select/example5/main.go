package main

import (
	"time"
)

func main() {
	ch := make(chan struct{})

	go func() {
		time.Sleep(time.Second)
		println("second passed")
		close(ch) // runtime.closechan
	}()
	println("waiting start")
	// close channel 的时候，会唤醒所有 writer、reader
	<-ch // runtime.chanrecv1
	println("waiting end")
	println("......................")

	ch = make(chan struct{})

	go func() {
		time.Sleep(time.Second)
		println("second passed")
		close(ch) // runtime.closechan
	}()
	println("waiting start")
	// close channel 的时候，会唤醒所有 writer、reader
	_, ok := <-ch // runtime.chanrecv2
	println(ok)
	println("waiting end")
}
