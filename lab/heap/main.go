package main

import (
	"fmt"
	"unsafe"
)

//go:notinheap
type person struct {
	name string
}

var (
	p    = &person{name: "pedro"}
	pp1  = make([]*person, 10)
	name = "mike"
)

//go:noescape
//go:linkname inheap runtime.inheap
//goland:noinspection GoUnusedParameter
func inheap(b uintptr) bool

func main() {
	// err: person can't be allocated in Go; it is incomplete (or unallocatable)
	// p1 := &person{name: "pedro"}
	// fmt.Printf("%p\n", p1)
	pp2 := make([]*person, 10)
	fmt.Printf("p: %p\n", p)
	fmt.Printf("pp1: %p\n", &pp1)
	fmt.Printf("pp2: %p\n", &pp2)
	fmt.Printf("name: %p\n", &name)
	b := inheap(uintptr(unsafe.Pointer(p)))
	fmt.Printf("p in heap: %v\n", b)
	b = inheap(uintptr(unsafe.Pointer(&pp1)))
	fmt.Printf("pp1 in heap: %v\n", b)
	b = inheap(uintptr(unsafe.Pointer(&pp2)))
	fmt.Printf("pp2 in heap: %v\n", b)
	b = inheap(uintptr(unsafe.Pointer(&name)))
	fmt.Printf("name in heap: %v\n", b)
}
