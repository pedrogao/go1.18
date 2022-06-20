package main

import (
	"fmt"
	"reflect"
	"unsafe"
)

func main() {
	a := []int{1, 2, 3, 4, 5}
	printSliceHeader(&a)
	fmt.Println(a)

	b := a[:1]
	printSliceHeader(&b)
	fmt.Println(b)

	// c cap = 5
	c := a[:2:len(a)]
	printSliceHeader(&c)
	fmt.Println(c)

	d := a[2:]
	printSliceHeader(&d)
	fmt.Println(d)

	e := a[:2:2] // 将 []int 作为第1个参数传给 rax，然后调用 newobject
	printSliceHeader(&e)
	fmt.Println(e)
	e = append(e, 10)
	printSliceHeader(&e)
	fmt.Println(e)
	fmt.Println(cap(e))
}

func printSliceHeader(slice *[]int) {
	fmt.Println(getSliceHeader(slice))
}

// https://stackoverflow.com/a/54196005/463785
func getSliceHeader(slice *[]int) string {
	sh := (*reflect.SliceHeader)(unsafe.Pointer(slice))
	return fmt.Sprintf("%+v", sh)
}
