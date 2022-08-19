package main

import (
	"errors"
	"fmt"
)

func testErr() error {
	return errors.New("err1111")
}

func testNoErr() error {
	return nil
}

func hello() error {
	err := testNoErr()
	ereturn err
	err = testErr()
	ereturn err

	fmt.Println("ending")
	return nil
}

func main() {
	fmt.Println(hello())
}
