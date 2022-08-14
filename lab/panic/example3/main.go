package main

import (
	"fmt"
)

func main() {
	defer func() {
		if err := recover(); err != nil {
			defer func() {
				if err1 := recover(); err1 != nil {
					fmt.Println(err)
				}
			}()
			panic(err)
		}
	}()

	panic("111")
}
