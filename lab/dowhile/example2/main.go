package main

import (
	"fmt"
)

// GOSSAFUNC=main  ../../../bin/go build ./main.go
func main() {
	i := 4
	dowhile i > 0 {
		fmt.Println(i)
		i--
	}
	fmt.Println(i)
}
