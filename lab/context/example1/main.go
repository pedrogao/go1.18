package main

import (
	"context"
	"fmt"
	"time"
)

func main() {
	ctx := context.Background()
	cancelCtx, cancelFunc := context.WithCancel(ctx)
	go task(cancelCtx)
	time.Sleep(time.Second * 3) // 休眠3s后调用 cancel
	cancelFunc()
	time.Sleep(time.Second * 1)
}

func task(ctx context.Context) {
	i := 1
	for {
		select {
		case <-ctx.Done(): // 外层调用 cancel 后，直接 exit
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
