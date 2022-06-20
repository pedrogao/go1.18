package main

import (
	"fmt"
)

//go:nosplit
//go:noescape
func entry()

func main() {
	fmt.Println("I'm here!")
	entry()
}
