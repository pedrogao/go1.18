package main

import (
	"context"
	"fmt"
	"time"
)

func main() {
	ctx := context.Background()
	cancelCtx, cancel := context.WithTimeout(ctx, time.Second*3) //3s后超时
	defer cancel()
	go task1(cancelCtx)
	time.Sleep(time.Second * 4)
}

func task1(ctx context.Context) {
	i := 1
	for {
		select {
		case <-ctx.Done(): // 超时后被动调用
			fmt.Println("Gracefully exit")
			fmt.Println(ctx.Err())
			return
		default:
			fmt.Println(i)
			time.Sleep(time.Second * 1)
			i++
		}
	}
}
