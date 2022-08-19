package main

import (
	"errors"
	"fmt"
)

func testErr() error {
	return errors.New("err")
}

func testNoErr() error {
	return nil
}

/**
GOSSAFUNC=hello  ../../../bin/go build ./main.go
*/
func hello() (string, error) {
	err := testNoErr()
	ereturn "111", err

	err = testNoErr()
	ereturn "777", err

	err = testErr()
	ereturn "222", err

	return "333", nil
}

func say() (string, error) {
	err := testErr()
	if err != nil {
		return "444", err
	}
	return "555", nil
}

func main() {
	//fmt.Println(say())
	fmt.Println(hello())
}
