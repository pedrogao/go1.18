package main

import "fmt"

func useUntil() {
	i := 4
	until i == 0 {
		i--
		sayHi()
	}
}

func sayHi() {
	fmt.Println("Hello, until!")
}

/**
GOSSAFUNC=useUntil  ../../../bin/go tool compile -l ./main.go
GOSSAFUNC=useUntil  ../../../bin/go build ./main.go
../../../bin/go build ./main.go
 */
func main()  {
	useUntil()
}