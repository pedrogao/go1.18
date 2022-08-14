package main

func main() {
	defer func() {
		if err := recover(); err != nil {
			panic(err)
		}
	}()

	panic("111")
}
